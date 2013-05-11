.class public Lcom/htc/album/addons/UploadEditorViewManager;
.super Landroid/widget/RelativeLayout;
.source "UploadEditorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIMEN_FIXED_FONT_DARKLIST_PRIMARY_XXS:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DIMEN_FIXED_FONT_LIST_PRIMARY_M:I = 0x0

.field private static final FIXED_FONT_DARKLIST_PRIMARY_XXS:[I = null

.field private static final FIXED_FONT_LIST_PRIMARY_M:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "UploadEditorViewManager"

.field public static final SOURCE_FACEBOOK:I = 0x1

.field public static final SOURCE_FLICKR:I = 0x2

.field public static final SOURCE_RENREN:I = 0x5

.field public static final SOURCE_SINA:I = 0x3

.field public static final SOURCE_SINAWEIBO:I = 0x4

.field public static final SOURCE_UKNOWN:I


# instance fields
.field private isInit:Z

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

.field private mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

.field private mEditorDescription:Lcom/htc/widget/HtcEditText;

.field private mEditorPhotoIndex:Landroid/widget/TextView;

.field private mEditorReferLayout:Landroid/widget/RelativeLayout;

.field private mEditorReferMain:Landroid/widget/RelativeLayout;

.field private mEditorTagButton:Lcom/htc/widget/HtcRimButton;

.field private mEditorTitle:Lcom/htc/widget/HtcEditText;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMainView:Landroid/view/ViewGroup;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/album/addons/UploadEditorViewManager;->FIXED_FONT_LIST_PRIMARY_M:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/album/addons/UploadEditorViewManager;->FIXED_FONT_DARKLIST_PRIMARY_XXS:[I

    .line 52
    sget-object v0, Lcom/htc/album/addons/UploadEditorViewManager;->FIXED_FONT_LIST_PRIMARY_M:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/addons/UploadEditorViewManager;->DIMEN_FIXED_FONT_LIST_PRIMARY_M:I

    .line 53
    sget-object v0, Lcom/htc/album/addons/UploadEditorViewManager;->FIXED_FONT_DARKLIST_PRIMARY_XXS:[I

    sget v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->RESOLUTION:I

    aget v0, v0, v1

    sput v0, Lcom/htc/album/addons/UploadEditorViewManager;->DIMEN_FIXED_FONT_DARKLIST_PRIMARY_XXS:I

    return-void

    .line 49
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data

    .line 50
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 68
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 69
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    .line 73
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    .line 74
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 75
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 78
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 80
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 68
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 69
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    .line 73
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    .line 74
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 75
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 78
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 80
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 65
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 66
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 68
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 69
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 71
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 72
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    .line 73
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    .line 74
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 75
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 76
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 78
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 80
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/UploadEditorViewManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/album/addons/UploadEditorViewManager;)Lcom/htc/widget/HtcEditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    return-object v0
.end method

.method private setDescriptionHint()V
    .locals 4

    .prologue
    const v3, 0x7f0a0071

    .line 599
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-nez v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v1, :cond_3

    .line 603
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v1, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v1}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->getDescriptionHintText()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, sPluginText:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 606
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcEditText;->setHint(I)V

    goto :goto_0

    .line 613
    .end local v0           #sPluginText:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    iget v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v1, v2, :cond_4

    .line 615
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setHint(I)V

    goto :goto_0

    .line 617
    :cond_4
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v1, v2, :cond_0

    .line 619
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcEditText;->setHint(I)V

    goto :goto_0
.end method

.method private setPhotoDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 575
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 578
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->setDescriptionHint()V

    .line 580
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    new-instance v1, Lcom/htc/album/addons/UploadEditorViewManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/UploadEditorViewManager$4;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 595
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 394
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 395
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 396
    new-instance v0, Lcom/htc/album/addons/UploadEditorViewManager$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/UploadEditorViewManager$3;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 420
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public forceInvalidateTagBtn()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcRimButton;->requestLayout()V

    .line 571
    :cond_0
    return-void
.end method

.method public getBundleArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhotoIndex()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    const-string v0, ""

    .line 206
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    return-object v0
.end method

.method public getTags(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "nCurIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 217
    .local v1, bundleCurrent:Landroid/os/Bundle;
    const-string v2, "tags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 218
    .local v0, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    return-object v0
.end method

.method public getTextDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    const-string v0, ""

    .line 199
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :cond_0
    return-object v0
.end method

.method public getTextTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    const-string v0, ""

    .line 192
    .local v0, szText:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 427
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    .line 428
    return-void
.end method

.method public initialize(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "nSource"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x11

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    const-class v1, Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setId(I)V

    .line 116
    iput p2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 117
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 120
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030045

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 122
    invoke-static {}, Lcom/htc/sunny2/common/HtcPaneManager;->isTablet()Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 124
    instance-of v1, p1, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    if-eqz v1, :cond_0

    .line 126
    check-cast p1, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;

    .end local p1
    invoke-interface {p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IActionBarControl;->actionBar()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    .line 127
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorActionBar:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;

    const v2, 0x7f0a006f

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyActionBar;->setPrimaryText(I)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    .line 136
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090074

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    .line 140
    sget-boolean v1, Lcom/htc/album/AlbumCommon/LayoutConstants;->IS_QHD_OR_HIGHER:Z

    if-nez v1, :cond_1

    .line 142
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    sget v2, Lcom/htc/album/addons/UploadEditorViewManager;->DIMEN_FIXED_FONT_DARKLIST_PRIMARY_XXS:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    .line 146
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    sget v2, Lcom/htc/album/addons/UploadEditorViewManager;->DIMEN_FIXED_FONT_LIST_PRIMARY_M:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcEditText;->setTextSize(IF)V

    .line 147
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    .line 148
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcEditText;->setGravity(I)V

    .line 149
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$1;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 157
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcEditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    .line 160
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    sget v2, Lcom/htc/album/addons/UploadEditorViewManager;->DIMEN_FIXED_FONT_LIST_PRIMARY_M:I

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Lcom/htc/widget/HtcEditText;->setTextSize(IF)V

    .line 161
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcEditText;->setMode(I)V

    .line 162
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 163
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v6}, Lcom/htc/widget/HtcEditText;->setGravity(I)V

    .line 164
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$2;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$2;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 177
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcRimButton;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    .line 180
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcRimButton;->setSingleLine()V

    .line 181
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 182
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcRimButton;->setFocusable(Z)V

    .line 183
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcRimButton;->setFocusableInTouchMode(Z)V

    .line 184
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout(Landroid/content/res/Configuration;)V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 100
    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 101
    return-void
.end method

.method public onEditTextFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "onFocus"

    .prologue
    .line 104
    if-nez p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 111
    :cond_0
    return-void
.end method

.method public prepareEditorView(IZ)V
    .locals 8
    .parameter "nCurIndex"
    .parameter "bIsVideo"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 310
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 349
    .local v1, bundleCurrent:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 351
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    const-string v4, "index"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_3

    .line 358
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTitle()Z

    move-result v3

    if-nez v3, :cond_7

    .line 359
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 370
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_5

    .line 372
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorDescription()Z

    move-result v3

    if-ne v5, v3, :cond_5

    .line 374
    :cond_4
    const-string v3, "description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, strDescription:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    .line 380
    .end local v2           #strDescription:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    check-cast v3, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;

    invoke-virtual {v3}, Lcom/htc/opensense/album/plugin/UploadEditorPluginBase;->onEnableEditorTagButton()Z

    move-result v3

    if-ne v5, v3, :cond_0

    .line 384
    :cond_6
    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 385
    .local v0, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {p0, v0, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 360
    .end local v0           #arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_7
    iget v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v5, v3, :cond_8

    if-nez p2, :cond_8

    .line 361
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    goto :goto_1

    .line 364
    :cond_8
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 365
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    const-string v4, "title"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public prepareEditorView(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 3
    .parameter "aPhoto"

    .prologue
    const/4 v2, 0x1

    .line 279
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v0, v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 285
    :cond_0
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 297
    :goto_1
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_2

    .line 298
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    .line 305
    :goto_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 300
    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public relayout(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 431
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 433
    .local v2, res:Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 434
    .local v0, isPort:Z
    if-nez p1, :cond_0

    .line 436
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 439
    :cond_0
    const/4 v3, 0x2

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    .line 441
    const/4 v0, 0x0

    .line 444
    :cond_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_2

    .line 446
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 447
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_REFERMAIN_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 448
    if-ne v6, v0, :cond_8

    .line 450
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 451
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 460
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_3

    .line 462
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorReferLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 463
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_REFERMAIN_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 466
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    if-eqz v3, :cond_4

    .line 468
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorPhotoIndex:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 469
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 470
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 471
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 472
    if-ne v6, v0, :cond_9

    .line 474
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_BOTTOM_PORT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 482
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_5

    .line 484
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3}, Lcom/htc/widget/HtcEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 485
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 486
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 487
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_TITLE_BOTTOM_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 490
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-eqz v3, :cond_6

    .line 492
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v3}, Lcom/htc/widget/HtcEditText;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 493
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 494
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_DESCR_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 495
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_DESCR_MAX_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setMaxHeight(I)V

    .line 496
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcEditText;->setMinHeight(I)V

    .line 499
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v3, :cond_7

    .line 501
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcRimButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 502
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 503
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_WIDTH_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_TAG_BUTTON_TOP_DIMEN:I

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 505
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    sget v4, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_ITEM_HEIGHT_DIMEN:I

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setMinHeight(I)V

    .line 507
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    return-void

    .line 455
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_8
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->FOOTER_BAR_HEIGHT_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 456
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_0

    .line 478
    :cond_9
    sget v3, Lcom/htc/album/AlbumCommon/LayoutConstants;->UPLOAD_EDITOR_INDEX_BOTTOM_LAND_DIMEN:I

    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method

.method public savePreviousEditorView(I)V
    .locals 3
    .parameter "nCurIndex"

    .prologue
    .line 232
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    if-nez v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 237
    .local v0, bundleCurrent:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 239
    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTitle:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v1}, Lcom/htc/widget/HtcEditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 244
    const-string v1, "description"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorDescription:Lcom/htc/widget/HtcEditText;

    invoke-virtual {v2}, Lcom/htc/widget/HtcEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBundleData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, bundleData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 213
    return-void
.end method

.method public setDataPlugin(Lcom/htc/opensense/album/plugin/BaseListPlugin;)V
    .locals 0
    .parameter "dataPlugin"

    .prologue
    .line 625
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mDataPlugin:Lcom/htc/opensense/album/plugin/BaseListPlugin;

    .line 626
    return-void
.end method

.method public setTagButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setTagButtonText(Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter "bIsVideo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz p2, :cond_0

    .line 540
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 566
    :goto_0
    return-void

    .line 543
    :cond_0
    const-string v2, ""

    .line 544
    .local v2, szButtonText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, aFace:Lcom/htc/album/TagUtils/TagInfo;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 549
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 550
    .restart local v0       #aFace:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    .line 557
    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .end local v1           #nIndex:I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 558
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v4, 0x7f0a0072

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 562
    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 564
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 554
    .restart local v0       #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .restart local v1       #nIndex:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 560
    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setTagButtonText(ZLjava/util/ArrayList;)V
    .locals 5
    .parameter "bIsVideo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p2, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    if-eqz p1, :cond_0

    .line 511
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    .line 536
    :goto_0
    return-void

    .line 514
    :cond_0
    const-string v2, ""

    .line 515
    .local v2, szButtonText:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 517
    const/4 v0, 0x0

    .line 518
    .local v0, aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 520
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 521
    .restart local v0       #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    .line 528
    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v1           #nIndex:I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 529
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const v4, 0x7f0a0072

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 533
    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcRimButton;->setVisibility(I)V

    goto :goto_0

    .line 525
    .restart local v0       #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .restart local v1       #nIndex:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditorTagButton:Lcom/htc/widget/HtcRimButton;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcRimButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public show()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    .line 424
    return-void
.end method

.method public updateTags(IZLandroid/content/Intent;)V
    .locals 6
    .parameter "nCurIndex"
    .parameter "isVideo"
    .parameter "intent"

    .prologue
    .line 250
    if-nez p3, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v1, 0x0

    .line 253
    .local v1, bundleTagView:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 255
    const/4 v2, 0x0

    .line 257
    .local v2, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz v1, :cond_2

    .line 258
    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 260
    :cond_2
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, bundleCur:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleCur:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 265
    .restart local v0       #bundleCur:Landroid/os/Bundle;
    const-string v3, "tags"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 268
    invoke-virtual {p0, v2, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    .line 270
    const-string v3, "UploadEditorViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UploadEditorViewManager][updateTags] TAG_RESULT_OK, Get Tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
