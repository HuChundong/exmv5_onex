.class public Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;
.super Landroid/app/Activity;
.source "EncodingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;
    }
.end annotation


# static fields
.field private static final CHARSET_SIZE:I = 0x25

.field private static final DIALOG_ID_LOADING:I = 0x64

.field private static final SHOW_LIST_VIEW:I = 0xc9

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private charsetMap:[[Ljava/lang/String;

.field private isDebug:Z

.field private isDestroyed:Z

.field private mAbContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBartxt:Lcom/htc/widget/ActionBarText;

.field mAllSubtitle:Ljava/lang/String;

.field mByteArray:[B

.field mEncodingAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;

.field private mEncodingCharset:Ljava/lang/String;

.field private mFirstSubtitleList:[Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadingDialog:Landroid/app/Dialog;

.field private mParseFirstTextThread:Ljava/lang/Thread;

.field private mSelEncodingIndex:I

.field private mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDebug:Z

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;

    .line 52
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDestroyed:Z

    .line 56
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 57
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    .line 58
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    .line 67
    const/16 v0, 0x25

    const/4 v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;

    .line 479
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$5;

    invoke-direct {v0, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$5;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->initUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSelEncodingIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSelEncodingIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingCharset:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mFirstSubtitleList:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDebug:Z

    return v0
.end method

.method private initActionBar()V
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 260
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    new-instance v1, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 265
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 268
    new-instance v1, Lcom/htc/widget/ActionBarText;

    invoke-direct {v1, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    .line 269
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v1}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    .line 270
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    const v2, 0x609000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 273
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 274
    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v1, v2}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 212
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x60b002d

    invoke-virtual {p0, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    .line 213
    .local v4, subtitleListView:Lcom/htc/widget/HtcListView;
    iget-object v5, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$EncodingAdapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 214
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 215
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 216
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 218
    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 219
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x2080035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 221
    new-instance v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;

    invoke-direct {v2, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$2;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V

    .line 235
    .local v2, listClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 237
    const v5, 0x60b002b

    invoke-virtual {p0, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooter;

    .line 239
    .local v1, footBtn:Lcom/htc/widget/HtcFooter;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 241
    const v5, 0x60b002c

    invoke-virtual {p0, v5}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 242
    .local v0, cancelBtn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_0

    .line 244
    const v5, 0x20800a3

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 245
    new-instance v5, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$3;

    invoke-direct {v5, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$3;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method private setCharsetMap(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const v12, 0x609002f

    const v11, 0x6090028

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 282
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 283
    .local v2, res:Landroid/content/res/Resources;
    const-string v3, "Windows-"

    .line 284
    .local v3, windows:Ljava/lang/String;
    const-string v1, "ISO-8859-"

    .line 285
    .local v1, iso:Ljava/lang/String;
    const/16 v4, 0x25

    new-array v0, v4, [[Ljava/lang/String;

    new-array v4, v10, [Ljava/lang/String;

    const v5, 0x609002a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "6"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v4, v0, v8

    new-array v4, v10, [Ljava/lang/String;

    const v5, 0x609002a

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v4, v0, v9

    new-array v4, v10, [Ljava/lang/String;

    const v5, 0x609002b

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "13"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object v4, v0, v10

    const/4 v4, 0x3

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/4 v4, 0x4

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1257"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/4 v4, 0x5

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "14"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/4 v4, 0x6

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090029

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/4 v4, 0x7

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090029

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1250"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x8

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "GBK"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x9

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "gb18030"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0xa

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002e

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "Big5"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0xb

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x609002e

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "Big5-HKSCS"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0xc

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0xd

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "KOI8-R"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0xe

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "KOI8-U"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0xf

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1251"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x10

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090030

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "7"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x11

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090030

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1253"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x12

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090031

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x13

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090031

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "8-I"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x14

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090031

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1255"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x15

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090032

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "EUC-JP"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x16

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090032

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "ISO-2022-JP"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x17

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090032

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "Shift_JIS"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x18

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090033

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "EUC-KR"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x19

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090034

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "10"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x1a

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090035

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "16"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090036

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090037

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "TIS-620"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090038

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1254"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090027

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "UTF-8"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090027

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "UTF-16LE"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x20

    new-array v5, v10, [Ljava/lang/String;

    const v6, 0x6090039

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1258"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x21

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x22

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "15"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x23

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1252"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    const/16 v4, 0x24

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const-string v6, "Macintosh"

    aput-object v6, v5, v9

    aput-object v5, v0, v4

    .line 322
    .local v0, charsetSet:[[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;

    const/16 v5, 0x25

    invoke-static {v0, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 189
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDestroyed:Z

    if-eqz v1, :cond_0

    .line 190
    const/4 v1, 0x1

    .line 206
    :goto_0
    return v1

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 194
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v2, "[dispatchKeyEvent]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dispatchKeyEvent] no dialog can be removed at dispatchKeyEvent(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x64

    .line 72
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v4, "[onCreate]: Begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 75
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x6030009

    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 77
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "subtitle_path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mSubtitlePath:Ljava/lang/String;

    .line 78
    const-string v3, "subtitle_byte_array"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mByteArray:[B

    .line 79
    const-string v3, "subtitle_charset"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mEncodingCharset:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->setCharsetMap(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->initActionBar()V

    .line 85
    :try_start_0
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 86
    const/16 v3, 0x64

    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    invoke-virtual {p0, v6}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->showDialog(I)V

    .line 94
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;

    invoke-direct {v4, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$1;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    .line 123
    :try_start_1
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    const-string v4, "Parse first subtitle text Thread"

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 139
    :goto_1
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v4, "[onCreate]: End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no dialog can be removed at onPrepared: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :try_start_2
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v4, "Parse thread is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 133
    :catch_1
    move-exception v0

    .line 135
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v4, "Start parse first subtitle thread fail"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/IllegalThreadStateException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 455
    .local v0, dialog:Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 476
    :goto_0
    return-object v0

    .line 458
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 459
    .local v2, res:Landroid/content/res/Resources;
    new-instance v1, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v1, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 460
    .local v1, pDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x204026b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 461
    new-instance v3, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$4;

    invoke-direct {v3, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList$4;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;)V

    invoke-virtual {v1, v3}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 468
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 472
    :cond_0
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mLoadingDialog:Landroid/app/Dialog;

    .line 473
    move-object v0, v1

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0xc9

    .line 153
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v3, "[onDestroy]: Begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 155
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->isDestroyed:Z

    .line 157
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    if-eqz v2, :cond_1

    .line 164
    :try_start_0
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v3, "Before thread join!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V

    .line 166
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v3, "After thread join!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->mParseFirstTextThread:Ljava/lang/Thread;

    .line 174
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v3, "Parse Thread is finished!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 179
    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->charsetMap:[[Ljava/lang/String;

    .line 181
    :cond_2
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v2, "[onDestroy]: End"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 171
    sget-object v2, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v3, "join thread exception!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v1, "[onResume]: Begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;->TAG:Ljava/lang/String;

    const-string v1, "[onResume]: End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method
