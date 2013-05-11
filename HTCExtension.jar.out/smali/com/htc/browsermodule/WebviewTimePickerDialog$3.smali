.class Lcom/htc/browsermodule/WebviewTimePickerDialog$3;
.super Ljava/lang/Object;
.source "WebviewTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 102
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 106
    .local v0, dateArray:[I
    packed-switch p2, :pswitch_data_0

    .line 122
    const/4 v2, -0x3

    aput v2, v0, v3

    .line 123
    aput v3, v0, v4

    .line 124
    aput v3, v0, v5

    .line 125
    aput v3, v0, v6

    .line 126
    aput v3, v0, v7

    .line 127
    const/4 v2, 0x5

    aput v3, v0, v2

    .line 128
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11b

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 130
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 133
    :goto_0
    return-void

    .line 108
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_0
    aput v3, v0, v3

    .line 109
    aput v3, v0, v4

    .line 110
    aput v3, v0, v5

    .line 111
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$200(Lcom/htc/browsermodule/WebviewTimePickerDialog;)I

    move-result v2

    aput v2, v0, v6

    .line 112
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$300(Lcom/htc/browsermodule/WebviewTimePickerDialog;)I

    move-result v2

    aput v2, v0, v7

    .line 115
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11b

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 117
    .restart local v1       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
