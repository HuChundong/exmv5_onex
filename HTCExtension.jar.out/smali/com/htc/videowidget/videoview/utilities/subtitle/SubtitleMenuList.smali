.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;
.super Landroid/app/Activity;
.source "SubtitleMenuList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isDestroyed:Z

.field private isResultOK:Z

.field private mAbContainer:Lcom/htc/widget/ActionBarContainer;

.field private mActionBarExt:Lcom/htc/widget/ActionBarExt;

.field private mActionBartxt:Lcom/htc/widget/ActionBarText;

.field private mByteArray:[B

.field private mDefaultCharset:Ljava/lang/String;

.field private mEncodingCharset:Ljava/lang/String;

.field private mPrevSubtitleIndex:I

.field private mSelSubtitleIndex:I

.field mSubtitleAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;

.field private mSubtitleNameList:[Ljava/lang/String;

.field private mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isDestroyed:Z

    .line 49
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isResultOK:Z

    .line 50
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 51
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    .line 52
    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    .line 254
    return-void
.end method

.method static synthetic access$000(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSelSubtitleIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSelSubtitleIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitlePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mByteArray:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isResultOK:Z

    return p1
.end method

.method static synthetic access$600(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mPrevSubtitleIndex:I

    return v0
.end method

.method private initActionBar(Z)V
    .locals 4
    .parameter "isClosedCaption"

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    .line 233
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Lcom/htc/widget/ActionBarExt;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/ActionBarExt;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    .line 238
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarExt;->enableHTCLandscape(Z)V

    .line 241
    new-instance v2, Lcom/htc/widget/ActionBarText;

    invoke-direct {v2, p0}, Lcom/htc/widget/ActionBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    .line 242
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBarExt:Lcom/htc/widget/ActionBarExt;

    invoke-virtual {v2}, Lcom/htc/widget/ActionBarExt;->getCustomContainer()Lcom/htc/widget/ActionBarContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    .line 243
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    if-eqz v2, :cond_0

    .line 245
    if-eqz p1, :cond_2

    const v1, 0x6090002

    .line 246
    .local v1, stringId:I
    :goto_1
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/ActionBarText;->setPrimaryText(I)V

    .line 247
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->removeView(Landroid/view/View;)V

    .line 248
    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mAbContainer:Lcom/htc/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mActionBartxt:Lcom/htc/widget/ActionBarText;

    invoke-virtual {v2, v3}, Lcom/htc/widget/ActionBarContainer;->addLeftView(Landroid/view/View;)V

    goto :goto_0

    .line 245
    .end local v1           #stringId:I
    :cond_2
    const v1, 0x6090001

    goto :goto_1
.end method

.method private initUI()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 153
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v5

    .line 154
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x60b0041

    invoke-virtual {p0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListView;

    .line 155
    .local v6, subtitleListView:Lcom/htc/widget/HtcListView;
    iget-object v7, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitleAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setBouncingEnabled(Z)V

    .line 157
    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 158
    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setBottomBorderHeight(I)V

    .line 160
    invoke-virtual {v6, v8}, Lcom/htc/widget/HtcListView;->setCacheColorHint(I)V

    .line 161
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2080035

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/htc/videowidget/videoview/utilities/subtitle/EncodingList;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v3, intent:Landroid/content/Intent;
    new-instance v4, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;

    invoke-direct {v4, p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$1;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Landroid/content/Intent;)V

    .line 184
    .local v4, listClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
    invoke-virtual {v6, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 186
    const v7, 0x60b003f

    invoke-virtual {p0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 188
    .local v2, footBtn:Lcom/htc/widget/HtcFooter;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcFooter;->setTranparentBckground(Z)V

    .line 190
    const v7, 0x60b0040

    invoke-virtual {p0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 191
    .local v1, doneBtn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v1, :cond_0

    .line 193
    const v7, 0x20800a7

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 194
    new-instance v7, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;

    invoke-direct {v7, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$2;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)V

    invoke-virtual {v1, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    const v7, 0x60b002c

    invoke-virtual {p0, v7}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 211
    .local v0, cancelBtn:Lcom/htc/widget/HtcFooterButton;
    if-eqz v0, :cond_1

    .line 213
    const v7, 0x20800a3

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooterButton;->setImageResource(I)V

    .line 214
    new-instance v7, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$3;

    invoke-direct {v7, p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$3;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;)V

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_1
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isDestroyed:Z

    if-eqz v2, :cond_0

    .line 148
    :goto_0
    return v1

    .line 128
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 148
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 134
    :sswitch_0
    iget-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isResultOK:Z

    if-nez v1, :cond_1

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "subtitle_charset"

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    sget-object v1, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Back Key Click] Currect charset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->setResult(ILandroid/content/Intent;)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->finish()V

    goto :goto_1

    .line 130
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x56 -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 82
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 84
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 86
    const-string v0, "subtitle_charset"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onActivityResult] Charset change from encoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v4, "[onCreate]: Begin"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/videowidget/videoview/HtcPlayerUtil;->getResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v2

    .line 60
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x6030011

    invoke-virtual {p0, v3}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->setContentView(I)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 62
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "subtitle_name_list"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitleNameList:[Ljava/lang/String;

    .line 63
    const-string v3, "subtitle_list_index"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mPrevSubtitleIndex:I

    .line 64
    iget v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mPrevSubtitleIndex:I

    iput v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSelSubtitleIndex:I

    .line 65
    const-string v3, "subtitle_path"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitlePath:Ljava/lang/String;

    .line 66
    const-string v3, "subtitle_byte_array"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mByteArray:[B

    .line 67
    const-string v3, "subtitle_charset"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mDefaultCharset:Ljava/lang/String;

    .line 69
    const-string v3, "INTENT_SUBTITLE_IS_CLOSE_CAPTION"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, closeCaption:Z
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onCreate], closeCaption = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;

    iget-object v4, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitleNameList:[Ljava/lang/String;

    invoke-direct {v3, p0, p0, v4, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;-><init>(Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;Landroid/content/Context;[Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->mSubtitleAdapter:Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList$SubtitleMenuAdapter;

    .line 73
    invoke-direct {p0, v0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->initActionBar(Z)V

    .line 74
    invoke-direct {p0}, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->initUI()V

    .line 76
    sget-object v3, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v4, "[onCreate]: End"

    invoke-static {v3, v4}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->isDestroyed:Z

    .line 117
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v1, "[onPause]: Begin"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 107
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v1, "[onPause]: End"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 95
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v1, "[onResume]: Begin"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleMenuList;->TAG:Ljava/lang/String;

    const-string v1, "[onResume]: End"

    invoke-static {v0, v1}, Lcom/htc/videowidget/videoview/utilities/LOG;->D(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method
