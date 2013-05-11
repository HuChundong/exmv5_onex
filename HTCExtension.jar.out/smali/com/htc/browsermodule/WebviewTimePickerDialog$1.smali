.class Lcom/htc/browsermodule/WebviewTimePickerDialog$1;
.super Ljava/lang/Object;
.source "WebviewTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/browsermodule/WebviewTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/htc/browsermodule/WebviewTimePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$1;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 38
    .local v0, dateArray2:[I
    const/4 v2, -0x2

    aput v2, v0, v3

    .line 39
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 40
    const/4 v2, 0x2

    aput v3, v0, v2

    .line 41
    const/4 v2, 0x3

    aput v3, v0, v2

    .line 42
    const/4 v2, 0x4

    aput v3, v0, v2

    .line 43
    const/4 v2, 0x5

    aput v3, v0, v2

    .line 44
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$1;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11b

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 46
    .local v1, msg2:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$1;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 47
    return-void
.end method
