.class Lcom/htc/browsermodule/WebviewDatePickerDialog$3;
.super Ljava/lang/Object;
.source "WebviewDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/browsermodule/WebviewDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;


# direct methods
.method constructor <init>(Lcom/htc/browsermodule/WebviewDatePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

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

    .line 108
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 110
    .local v0, dateArray:[I
    packed-switch p2, :pswitch_data_0

    .line 129
    const/4 v2, -0x3

    aput v2, v0, v3

    .line 130
    aput v3, v0, v4

    .line 131
    aput v3, v0, v5

    .line 132
    aput v3, v0, v6

    .line 133
    aput v3, v0, v7

    .line 134
    const/4 v2, 0x5

    aput v3, v0, v2

    .line 135
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->PickerTypeIsMonth:Z
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$200(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 136
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x119

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, msg:Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 144
    :goto_1
    return-void

    .line 112
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_0
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mYear:I
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$300(Lcom/htc/browsermodule/WebviewDatePickerDialog;)I

    move-result v2

    aput v2, v0, v3

    .line 113
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mMonth:I
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$400(Lcom/htc/browsermodule/WebviewDatePickerDialog;)I

    move-result v2

    aput v2, v0, v4

    .line 114
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDay:I
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$500(Lcom/htc/browsermodule/WebviewDatePickerDialog;)I

    move-result v2

    aput v2, v0, v5

    .line 115
    aput v3, v0, v6

    .line 116
    aput v3, v0, v7

    .line 117
    const/4 v2, 0x5

    aput v3, v0, v2

    .line 118
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->PickerTypeIsMonth:Z
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$200(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 119
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x119

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 124
    .restart local v1       #msg:Landroid/os/Message;
    :goto_2
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 122
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11a

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_2

    .line 139
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11a

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
