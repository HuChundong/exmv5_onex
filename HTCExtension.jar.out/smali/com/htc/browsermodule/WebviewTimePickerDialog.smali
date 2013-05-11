.class public Lcom/htc/browsermodule/WebviewTimePickerDialog;
.super Ljava/lang/Object;
.source "WebviewTimePickerDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHour:I

.field private mMinute:I

.field private mPickerDlg:Lcom/htc/widget/HtcTimePickerDialog;

.field private final mPrivateHandler:Landroid/os/Handler;

.field private mTimeSetListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;IIZ)V
    .locals 1
    .parameter "ctx"
    .parameter "wvc"
    .parameter "hour"
    .parameter "minute"
    .parameter "ampm"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPrivateHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lcom/htc/browsermodule/WebviewTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/browsermodule/WebviewTimePickerDialog$1;-><init>(Lcom/htc/browsermodule/WebviewTimePickerDialog;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 50
    new-instance v0, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;

    invoke-direct {v0, p0}, Lcom/htc/browsermodule/WebviewTimePickerDialog$2;-><init>(Lcom/htc/browsermodule/WebviewTimePickerDialog;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mTimeSetListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    .line 102
    new-instance v0, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;

    invoke-direct {v0, p0}, Lcom/htc/browsermodule/WebviewTimePickerDialog$3;-><init>(Lcom/htc/browsermodule/WebviewTimePickerDialog;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 95
    iput p3, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I

    .line 96
    iput p4, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I

    .line 99
    invoke-virtual {p0}, Lcom/htc/browsermodule/WebviewTimePickerDialog;->createTimeDlg()Lcom/htc/widget/HtcTimePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcTimePickerDialog;->show()V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/browsermodule/WebviewTimePickerDialog;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/browsermodule/WebviewTimePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/browsermodule/WebviewTimePickerDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/browsermodule/WebviewTimePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/browsermodule/WebviewTimePickerDialog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I

    return p1
.end method


# virtual methods
.method public createTimeDlg()Lcom/htc/widget/HtcTimePickerDialog;
    .locals 6

    .prologue
    .line 144
    new-instance v0, Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mTimeSetListener:Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I

    iget v4, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcTimePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcTimePickerDialog;

    .line 147
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcTimePickerDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mContext:Landroid/content/Context;

    const v3, 0x204028a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcTimePickerDialog;

    iget-object v1, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 151
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcTimePickerDialog;

    return-object v0
.end method

.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mHour:I

    return v0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mMinute:I

    return v0
.end method

.method public setDismiss(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewTimePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcTimePickerDialog;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcTimePickerDialog;->setDismissMessage(Landroid/os/Message;)V

    .line 162
    return-void
.end method
