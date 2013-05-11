.class public Lcom/htc/album/helper/GalleryProgressDialog;
.super Lcom/htc/app/HtcProgressDialog;
.source "GalleryProgressDialog.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExpandMaxCount:I

.field private mExpandProgressCount:I

.field private mGeneralMaxCount:I

.field private mGeneralProgressCount:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 17
    const-string v0, "GalleryProgressDialog"

    iput-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->LOG_TAG:Ljava/lang/String;

    .line 20
    iput v3, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I

    .line 23
    iput v3, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralMaxCount:I

    .line 25
    iput v2, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    .line 26
    iput v2, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralProgressCount:I

    .line 27
    iput-object v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 28
    iput-object v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 29
    iput-object v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 31
    iput-object v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 34
    iput-object v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "%d/%d"

    iput-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 44
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 45
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 46
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/helper/GalleryProgressDialog;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/album/helper/GalleryProgressDialog;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$202(Lcom/htc/album/helper/GalleryProgressDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$302(Lcom/htc/album/helper/GalleryProgressDialog;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-object p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/htc/album/helper/GalleryProgressDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I

    return v0
.end method

.method private getNumberFormatString(II)Ljava/lang/String;
    .locals 4
    .parameter "currentCount"
    .parameter "totalCount"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 111
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPercentFormatString(II)Ljava/lang/String;
    .locals 8
    .parameter "currentCount"
    .parameter "totalCount"

    .prologue
    const/4 v7, 0x0

    .line 116
    int-to-double v3, p1

    int-to-double v5, p2

    div-double v0, v3, v5

    .line 117
    .local v0, percent:D
    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 118
    .local v2, tmp:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 121
    invoke-virtual {v2}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getExpandMaxCount()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I

    return v0
.end method

.method public getGeneralMaxCount()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralMaxCount:I

    return v0
.end method

.method public incrementProgressNumberBy(I)V
    .locals 2
    .parameter "increment"

    .prologue
    .line 101
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralProgressCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralProgressCount:I

    .line 104
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralProgressCount:I

    iget v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralMaxCount:I

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->getNumberFormatString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setNumberText(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public incrementProgressPercentBy(I)V
    .locals 2
    .parameter "increment"

    .prologue
    .line 85
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    .line 86
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 87
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    invoke-super {p0, v0}, Lcom/htc/app/HtcProgressDialog;->incrementProgressBy(I)V

    .line 92
    :goto_0
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    iget v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->getPercentFormatString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setPercentText(Ljava/lang/String;)V

    .line 93
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public initialProgresDialog()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setProgressStyle(I)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setProgressPercent(I)V

    .line 60
    new-instance v0, Lcom/htc/album/helper/GalleryProgressDialog$1;

    invoke-direct {v0, p0}, Lcom/htc/album/helper/GalleryProgressDialog$1;-><init>(Lcom/htc/album/helper/GalleryProgressDialog;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 77
    return-void
.end method

.method public setExpandMaxCount(I)V
    .locals 1
    .parameter "expandCount"

    .prologue
    .line 185
    iput p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I

    .line 187
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 189
    :cond_0
    return-void
.end method

.method public setGeneralMaxCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 197
    iput p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralMaxCount:I

    .line 198
    return-void
.end method

.method protected setNumberText(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected setPercentText(Ljava/lang/String;)V
    .locals 1
    .parameter "percent"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method

.method public setProgressNumber(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 166
    iput p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralProgressCount:I

    .line 168
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralProgressCount:I

    iget v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mGeneralMaxCount:I

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->getNumberFormatString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setNumberText(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public setProgressPercent(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 150
    iput p1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    .line 151
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 152
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    invoke-super {p0, v0}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 157
    :goto_0
    iget v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    iget v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandMaxCount:I

    invoke-direct {p0, v0, v1}, Lcom/htc/album/helper/GalleryProgressDialog;->getPercentFormatString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/helper/GalleryProgressDialog;->setPercentText(Ljava/lang/String;)V

    .line 158
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/htc/album/helper/GalleryProgressDialog;->mExpandProgressCount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method
