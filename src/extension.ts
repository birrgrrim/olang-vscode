import * as vscode from 'vscode';
import * as cp from 'child_process';

let replTerminal: vscode.Terminal | undefined;

export function activate(context: vscode.ExtensionContext) {
    let startRepl = vscode.commands.registerCommand('olang.startRepl', () => {
        if (replTerminal) {
            replTerminal.dispose();
        }

        const config = vscode.workspace.getConfiguration('olang');
        const tachyonPath = config.get<string>('tachyonPath') || 'tachyon';
        const useRlwrap = config.get<boolean>('useRlwrap') || true;

        replTerminal = vscode.window.createTerminal('O REPL');
        if (useRlwrap) {
            replTerminal.sendText(`rlwrap ${tachyonPath}`);
        } else {
            replTerminal.sendText(tachyonPath);
        }
        replTerminal.show();
    });

    let evalSelection = vscode.commands.registerCommand('olang.evalSelection', () => {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return;

        const selection = editor.selection;
        const text = editor.document.getText(selection);
        
        if (!replTerminal) {
            vscode.commands.executeCommand('olang.startRepl');
        }
        
        // Send text to REPL
        replTerminal?.sendText(text);
    });

    let evalFile = vscode.commands.registerCommand('olang.evalFile', () => {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return;

        const filePath = editor.document.uri.fsPath;
        if (!replTerminal) {
            vscode.commands.executeCommand('olang.startRepl');
        }
        
        // Send load command to REPL
        replTerminal?.sendText(`load "${filePath}"`);
    });

    context.subscriptions.push(startRepl, evalSelection, evalFile);
}

export function deactivate() {
    if (replTerminal) {
        replTerminal.dispose();
    }
}
