.class Lcom/htc/browsermodule/WebviewTimePickerDialog$2;
.super Ljava/lang/Object;
.source "WebviewTimePickerDialog.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


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
    .line 50
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 4
    .parameter "view"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #setter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I
    invoke-static {v2, p2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$202(Lcom/htc/browsermodule/WebviewTimePickerDialog;I)I

    .line 62
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #setter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I
    invoke-static {v2, p3}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$302(Lcom/htc/browsermodule/WebviewTimePickerDialog;I)I

    .line 63
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 64
    .local v0, dateArray:[I
    const/16 v2, 0x7d0

    aput v2, v0, v3

    .line 65
    const/4 v2, 0x1

    aput v3, v0, v2

    .line 66
    const/4 v2, 0x2

    aput v3, v0, v2

    .line 67
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I
    invoke-static {v3}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$200(Lcom/htc/browsermodule/WebviewTimePickerDialog;)I

    move-result v3

    aput v3, v0, v2

    .line 68
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I
    invoke-static {v3}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$300(Lcom/htc/browsermodule/WebviewTimePickerDialog;)I

    move-result v3

    aput v3, v0, v2

    .line 69
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPrivateHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$000(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11b

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 71
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;->this$0:Lcom/htc/browsermodule/WebviewTimePickerDialog;

    #getter for: Lcom/htc/browsermodule/WebviewTimePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->access$100(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/webkit/WebViewCore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(Landroid/os/Message;)V

    .line 72
    return-void
.end method
