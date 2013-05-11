.class public Lcom/htc/browsermodule/WebviewDatePickerDialog;
.super Ljava/lang/Object;
.source "WebviewDatePickerDialog.java"


# instance fields
.field private PickerTypeIsMonth:Z

.field private mContext:Landroid/content/Context;

.field private mDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mMonth:I

.field private mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

.field private final mPrivateHandler:Landroid/os/Handler;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field private mYear:I

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;III)V
    .locals 1
    .parameter "ctx"
    .parameter "wvc"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;

    .line 32
    new-instance v0, Lcom/htc/browsermodule/WebviewDatePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/browsermodule/WebviewDatePickerDialog$1;-><init>(Lcom/htc/browsermodule/WebviewDatePickerDialog;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 46
    new-instance v0, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;

    invoke-direct {v0, p0}, Lcom/htc/browsermodule/WebviewDatePickerDialog$2;-><init>(Lcom/htc/browsermodule/WebviewDatePickerDialog;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    .line 106
    new-instance v0, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;

    invoke-direct {v0, p0}, Lcom/htc/browsermodule/WebviewDatePickerDialog$3;-><init>(Lcom/htc/browsermodule/WebviewDatePickerDialog;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 94
    iput-object p1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 96
    iput p3, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mYear:I

    .line 97
    iput p4, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mMonth:I

    .line 98
    iput p5, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDay:I

    .line 100
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDay:I

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->createMonthDlg()Lcom/htc/widget/HtcDatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/htc/browsermodule/WebviewDatePickerDialog;->createDateDlg()Lcom/htc/widget/HtcDatePickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcDatePickerDialog;->show()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/browsermodule/WebviewDatePickerDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->PickerTypeIsMonth:Z

    return v0
.end method

.method static synthetic access$300(Lcom/htc/browsermodule/WebviewDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mYear:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/browsermodule/WebviewDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mMonth:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/browsermodule/WebviewDatePickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDay:I

    return v0
.end method


# virtual methods
.method public createDateDlg()Lcom/htc/widget/HtcDatePickerDialog;
    .locals 9

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->PickerTypeIsMonth:Z

    .line 152
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7b2

    const/16 v4, 0x7ee

    iget v5, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mYear:I

    iget v6, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mMonth:I

    iget v7, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDay:I

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIIIZ)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    .line 155
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mContext:Landroid/content/Context;

    const v3, 0x204028a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 159
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    return-object v0
.end method

.method public createMonthDlg()Lcom/htc/widget/HtcDatePickerDialog;
    .locals 8

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->PickerTypeIsMonth:Z

    .line 167
    new-instance v0, Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDateSetListener:Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;

    const/16 v3, 0x7b2

    const/16 v4, 0x7ee

    iget v5, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mYear:I

    iget v6, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mMonth:I

    const-string v7, "My"

    invoke-direct/range {v0 .. v7}, Lcom/htc/widget/HtcDatePickerDialog;-><init>(Landroid/content/Context;Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    .line 170
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mContext:Landroid/content/Context;

    const v3, 0x204028a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcDatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    iget-object v1, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcDatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 174
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    return-object v0
.end method

.method public getCurrentDay()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mDay:I

    return v0
.end method

.method public getCurrentMonth()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mMonth:I

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mYear:I

    return v0
.end method

.method public setDismiss(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/browsermodule/WebviewDatePickerDialog;->mPickerDlg:Lcom/htc/widget/HtcDatePickerDialog;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcDatePickerDialog;->setDismissMessage(Landroid/os/Message;)V

    .line 185
    return-void
.end method
