.class public Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;
.super Ljava/lang/Object;
.source "DetailsDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mMeta:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

.field private mStereoModeStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mStereoModeStatus:I

    .line 45
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method private createDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v8

    .line 80
    .local v8, res:Landroid/content/res/Resources;
    if-nez v8, :cond_0

    .line 82
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->TAG:Ljava/lang/String;

    const-string v4, "[createDialog] res is null"

    invoke-static {v2, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 108
    :goto_0
    return-object v2

    .line 85
    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v4, 0x2040286

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 88
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 89
    .local v6, factory:Landroid/view/LayoutInflater;
    const v4, 0x6030003

    invoke-virtual {v6, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 91
    .local v1, viewDetailsDialog:Landroid/view/View;
    const v3, 0x60b000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 92
    .local v7, mListView:Landroid/widget/ListView;
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    if-nez v3, :cond_1

    .line 94
    new-instance v3, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mMeta:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-direct {v3, v4, v5}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;-><init>(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    invoke-virtual {v3}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->notifyDataSetChanged()V

    move v3, v2

    move v4, v2

    move v5, v2

    .line 98
    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;IIII)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 99
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 100
    const v2, 0x2040151

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper$1;

    invoke-direct {v3, p0}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper$1;-><init>(Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 108
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 75
    :cond_0
    return-void
.end method

.method public setMeta(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mMeta:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    .line 51
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-nez v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->createDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mMeta:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;-><init>(Landroid/content/Context;Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mMeta:Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;

    invoke-virtual {v0, v1}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->setMeta(Lcom/htc/videowidget/videoview/utilities/metadata/IMetaData;)V

    .line 59
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDetailsAdapter:Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;

    invoke-virtual {v0}, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/metadata/DetailsDialogHelper;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 68
    :cond_0
    return-void
.end method
