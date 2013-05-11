.class Lcom/htc/browsermodule/WebviewDatePickerDialog$2;
.super Ljava/lang/Object;
.source "WebviewDatePickerDialog.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


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
    .line 46
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 5
    .parameter "view"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 59
    .local v0, dateArray:[I
    aput p2, v0, v3

    .line 60
    aput p3, v0, v4

    .line 61
    const/4 v2, 0x2

    aput p4, v0, v2

    .line 62
    const/4 v2, 0x3

    aput v3, v0, v2

    .line 63
    const/4 v2, 0x4

    aput v3, v0, v2

    .line 64
    const/4 v2, 0x5

    aput v3, v0, v2

    .line 66
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->PickerTypeIsMonth:Z
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$200(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 67
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x119

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 72
    .local v1, msg:Landroid/os/Message;
    :goto_0
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 73
    return-void

    .line 70
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewDatePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11a

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_0
.end method
