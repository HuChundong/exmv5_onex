.class public abstract Lcom/htc/text/AbstractSocialMarkupRenderer;
.super Ljava/lang/Object;
.source "AbstractSocialMarkupRenderer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/text/AbstractSocialMarkupRenderer$1;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$Href;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$Text3;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;,
        Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;
    }
.end annotation


# static fields
.field private static final BG_PKG_FRIENDSTREAM:Ljava/lang/String; = "com.htc.friendstream"

.field private static final BG_PKG_SENSE45:Ljava/lang/String; = "com.htc.opensense.social"

.field private static final BG_PKG_SOCIALMANAGER:Ljava/lang/String; = "com.htc.opensense.social"

.field private static final BG_RES_FRIENDSTREAM:Ljava/lang/String; = "fs_bg_loading"

.field private static final BG_RES_SENSE45:Ljava/lang/String; = "image_drawable"

.field private static final BG_RES_SOCIALMANAGER:Ljava/lang/String; = "gallery_bg_loading"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static NOCOLOR:I = 0x0

.field private static final SENSE:Ljava/lang/String; = null

.field private static final SENSE40:Ljava/lang/String; = "4.0"

.field private static final SIZEOFBASETOKENS:I = 0x3

.field private static final XML_EMPTY_ELEMENT:Ljava/lang/String; = "<z></z>"


# instance fields
.field private mAbsoluteSizeSpanIndeces:[I

.field private mAbsoluteSizeSpanSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/text/style/AbsoluteSizeSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mDecWordLimit:I

.field private mDecoration:Ljava/lang/String;

.field private mDefaultImage:Landroid/graphics/Bitmap;

.field private mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

.field private mDrawableSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mForegroundColorSpanIndeces:[I

.field private mForegroundColorSpanSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/text/style/ForegroundColorSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFormat:Lcom/htc/text/tag/ITag$Format;

.field private mOffsets:[I

.field private mPQAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

.field private mPlurkQualifierSpanSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/text/style/PlurkQualifierSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfileSpanIndeces:[I

.field private mProfileSpanSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/htc/text/style/ProfileSpan;",
            ">;>;"
        }
    .end annotation
.end field

.field private mQueryKey:Ljava/lang/String;

.field private mRawContent:Ljava/lang/String;

.field private mReader:Lorg/xml/sax/XMLReader;

.field private mSource:Ljava/lang/String;

.field private mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

.field private mStyleSpanIndeces:[I

.field private mStyleSpanSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/text/style/StyleSpan;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const v0, 0x7162534

    sput v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    .line 61
    const-class v0, Lcom/htc/text/AbstractSocialMarkupRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    sput-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->SENSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 101
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanSparseArray:Landroid/util/SparseArray;

    .line 69
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    .line 70
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanSparseArray:Landroid/util/SparseArray;

    .line 71
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPlurkQualifierSpanSparseArray:Landroid/util/SparseArray;

    .line 72
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanSparseArray:Landroid/util/SparseArray;

    .line 73
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanSparseArray:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    .line 76
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    .line 77
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    .line 78
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mOffsets:[I

    .line 79
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanIndeces:[I

    .line 80
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanIndeces:[I

    .line 81
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 82
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 83
    sget-object v0, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    .line 84
    sget-object v0, Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;->V1:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPQAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    .line 85
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecoration:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    .line 102
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    .line 103
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/text/style/PlurkQualifierSpan;->checkAssetsVersion(Landroid/content/Context;)Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPQAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    .line 104
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    .line 105
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    .line 106
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanIndeces:[I

    .line 107
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanIndeces:[I

    .line 108
    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 116
    return-void
.end method

.method private doHandleAutoLink(Landroid/text/SpannableStringBuilder;II)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1000
    if-ge p2, p3, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isAutoLinkEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1002
    invoke-virtual {p1, p2, p3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1003
    .local v0, string:Ljava/lang/CharSequence;
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    .line 1004
    .local v1, temp:Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1005
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1006
    .local v2, tl:I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1009
    .end local v0           #string:Ljava/lang/CharSequence;
    .end local v1           #temp:Landroid/text/SpannableStringBuilder;
    .end local v2           #tl:I
    :cond_0
    return-void
.end method

.method private doHandleEmoticon(Landroid/text/SpannableStringBuilder;IIILandroid/graphics/drawable/Drawable;)V
    .locals 10
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "alignment"
    .parameter "d"

    .prologue
    const/4 v9, 0x0

    .line 1025
    if-ge p2, p3, :cond_1

    .line 1026
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, p5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_0

    move-object v5, p5

    .line 1028
    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1029
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v2

    .line 1030
    .local v2, h:F
    :goto_0
    move v3, v2

    .line 1031
    .local v3, height:F
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 1032
    .local v4, width:F
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    float-to-int v6, v4

    float-to-int v7, v3

    const/4 v8, 0x1

    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1036
    .local v1, d2:Landroid/graphics/drawable/BitmapDrawable;
    move-object p5, v1

    .line 1038
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #d2:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #h:F
    .end local v3           #height:F
    .end local v4           #width:F
    :cond_0
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {p5, v9, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1039
    new-instance v5, Landroid/text/style/ImageSpan;

    invoke-direct {v5, p5, p4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const/16 v6, 0x21

    invoke-virtual {p1, v5, p2, p3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1041
    :cond_1
    return-void

    .line 1029
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :cond_2
    const/high16 v2, 0x41a0

    goto :goto_0
.end method

.method private doHandleEmphasis(Landroid/text/SpannableStringBuilder;IIII)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "color"
    .parameter "argbIndex"

    .prologue
    const/16 v1, 0x21

    .line 1044
    if-ge p2, p3, :cond_0

    .line 1045
    if-eqz p5, :cond_1

    .line 1046
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, p5, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1053
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq p4, v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, p4, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private doHandleImage(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "uri"
    .parameter "pv"
    .parameter "bitmap"
    .parameter "minDim"
    .parameter "maxDim"
    .parameter "callback"

    .prologue
    .line 1013
    if-ge p2, p3, :cond_1

    .line 1014
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v2, p6

    move v3, p7

    move/from16 v4, p8

    move-object v5, p5

    move-object/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getUrlDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;Landroid/graphics/drawable/Drawable$Callback;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1015
    .local v7, d:Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_0

    .line 1016
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, v7, p5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1019
    new-instance v0, Lcom/htc/text/style/URISpan;

    const/4 v1, 0x1

    invoke-direct {v0, p4, v1}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;Z)V

    const/16 v1, 0x21

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1022
    .end local v7           #d:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method private doHandleLink(Landroid/text/SpannableStringBuilder;IILjava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/16 v2, 0x21

    .line 987
    if-ge p2, p3, :cond_1

    if-eqz p4, :cond_1

    .line 988
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    new-instance v0, Lcom/htc/text/style/URISpan;

    const/4 v1, 0x1

    invoke-direct {v0, p4, v1}, Lcom/htc/text/style/URISpan;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p1, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 992
    :cond_0
    if-lez p5, :cond_1

    .line 993
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    invoke-direct {p0, p5, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getAbsoluteSizeSpan(I[I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 997
    :cond_1
    return-void
.end method

.method private doHandleProfile(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "name"
    .parameter "uri"
    .parameter "color"
    .parameter "size"

    .prologue
    const/4 v4, 0x1

    const/16 v7, 0x21

    .line 946
    if-ge p2, p3, :cond_2

    .line 947
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isSpanClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v6, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanIndeces:[I

    move-object v0, p0

    move-object v1, p5

    move-object v2, p4

    move v3, p6

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileSpan(Ljava/lang/String;Ljava/lang/String;IZZ[I)Lcom/htc/text/style/ProfileSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanIndeces:[I

    invoke-direct {p0, v4, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getStyleSpan(I[I)Landroid/text/style/StyleSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 953
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq p6, v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, p6, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 957
    :cond_1
    if-lez p7, :cond_2

    .line 958
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    invoke-direct {p0, p7, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getAbsoluteSizeSpan(I[I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 962
    :cond_2
    return-void
.end method

.method private doHandleProfile2(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "name"
    .parameter "uri"
    .parameter "color"
    .parameter "size"

    .prologue
    const/16 v2, 0x21

    .line 966
    if-ge p2, p3, :cond_1

    .line 972
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanIndeces:[I

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getStyleSpan(I[I)Landroid/text/style/StyleSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 974
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq p6, v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, p6, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 978
    :cond_0
    if-lez p7, :cond_1

    .line 979
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    invoke-direct {p0, p7, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getAbsoluteSizeSpan(I[I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 983
    :cond_1
    return-void
.end method

.method private doHandleText(Landroid/text/SpannableStringBuilder;IIII)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "color"
    .parameter "size"

    .prologue
    const/16 v1, 0x21

    .line 1056
    if-ge p2, p3, :cond_1

    .line 1057
    if-lez p5, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    invoke-direct {p0, p5, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getAbsoluteSizeSpan(I[I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1061
    :cond_0
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq p4, v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, p4, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1066
    :cond_1
    return-void
.end method

.method private doHandleTimestamp(Landroid/text/SpannableStringBuilder;IIII)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "color"
    .parameter "size"

    .prologue
    const/16 v1, 0x21

    .line 1069
    if-lez p5, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    invoke-direct {p0, p5, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getAbsoluteSizeSpan(I[I)Landroid/text/style/AbsoluteSizeSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1073
    :cond_0
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq p4, v0, :cond_1

    .line 1074
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, p4, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1077
    :cond_1
    return-void
.end method

.method private getAbsoluteSizeSpan(I[I)Landroid/text/style/AbsoluteSizeSpan;
    .locals 5
    .parameter "size"
    .parameter "indeces"

    .prologue
    const/4 v4, 0x0

    .line 1191
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_2

    .line 1192
    :cond_0
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 1206
    :cond_1
    :goto_0
    return-object v0

    .line 1194
    :cond_2
    const/4 v0, 0x0

    .line 1195
    .local v0, asspan:Landroid/text/style/AbsoluteSizeSpan;
    aget v2, p2, v4

    .line 1196
    .local v2, newIndex:I
    aget v3, p2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v4

    .line 1197
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanSparseArray:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 1198
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanSparseArray:Landroid/util/SparseArray;

    .line 1200
    :cond_3
    shl-int/lit8 v3, v2, 0xa

    add-int v1, v3, p1

    .line 1201
    .local v1, key:I
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-static {v3}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #asspan:Landroid/text/style/AbsoluteSizeSpan;
    check-cast v0, Landroid/text/style/AbsoluteSizeSpan;

    .line 1202
    .restart local v0       #asspan:Landroid/text/style/AbsoluteSizeSpan;
    if-nez v0, :cond_1

    .line 1203
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    .end local v0           #asspan:Landroid/text/style/AbsoluteSizeSpan;
    invoke-direct {v0, p1}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    .line 1204
    .restart local v0       #asspan:Landroid/text/style/AbsoluteSizeSpan;
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanSparseArray:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getDefaultBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "foreImageResId"
    .parameter "imageSize"

    .prologue
    .line 1223
    const/4 v6, 0x0

    .line 1224
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 1226
    const/4 v3, 0x0

    .line 1227
    .local v3, backPkg:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1228
    .local v4, backRes:Ljava/lang/String;
    sget-object v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->SENSE:Ljava/lang/String;

    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1230
    const-string v3, "com.htc.friendstream"

    .line 1231
    const-string v4, "fs_bg_loading"

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    .line 1237
    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1241
    .end local v3           #backPkg:Ljava/lang/String;
    .end local v4           #backRes:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1234
    .restart local v3       #backPkg:Ljava/lang/String;
    .restart local v4       #backRes:Ljava/lang/String;
    :cond_0
    const-string v3, "com.htc.opensense.social"

    .line 1235
    const-string v4, "gallery_bg_loading"

    goto :goto_0

    .line 1240
    .end local v3           #backPkg:Ljava/lang/String;
    .end local v4           #backRes:Ljava/lang/String;
    :cond_1
    const-string v0, "com.htc.opensense.social"

    const-string v1, "image_drawable"

    invoke-static {p1, v0, v1, p3, p3}, Lcom/htc/graphics/util/HtcBitmapUtils;->getBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1241
    invoke-static {}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/htc/graphics/util/HtcBitmapUtils;->getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private getDefaultBitmap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "context"
    .parameter "foreImageResId"
    .parameter "backImagePkg"
    .parameter "backImageRes"
    .parameter "imageSize"

    .prologue
    .line 1247
    const/4 v7, 0x0

    .line 1254
    .local v7, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Lcom/htc/graphics/util/HtcBitmapUtils;->getBitmapWithResId(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1255
    .local v8, foregroundImage:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p5

    invoke-static/range {v0 .. v5}, Lcom/htc/graphics/util/HtcBitmapUtils;->getNinePatchBitmapFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1263
    .local v6, backgroundImage:Landroid/graphics/Bitmap;
    invoke-static {v6, v8}, Lcom/htc/graphics/util/HtcBitmapUtils;->getCombinedBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1268
    invoke-static {}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/htc/graphics/util/HtcBitmapUtils;->getBitmapWithConfig(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 1285
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private getEmoticonDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "resId"

    .prologue
    .line 896
    if-gtz p1, :cond_1

    .line 897
    const/4 v0, 0x0

    .line 912
    :cond_0
    :goto_0
    return-object v0

    .line 900
    :cond_1
    const/4 v0, 0x0

    .line 901
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 902
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    .line 904
    :cond_2
    const-string v2, "%s-%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "OpenSenseRes"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 905
    .local v1, key:I
    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    invoke-static {v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 906
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 907
    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/htc/text/util/SocialNetworkSmileyParser;->getSocialNetworkEmoticonDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 908
    if-eqz v0, :cond_0

    .line 909
    iget-object v2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "pkg"
    .parameter "res"

    .prologue
    const/4 v5, 0x0

    .line 871
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v0, v5

    .line 892
    :cond_1
    :goto_0
    return-object v0

    .line 874
    :cond_2
    const/4 v0, 0x0

    .line 875
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    if-nez v4, :cond_3

    .line 876
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    .line 878
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 879
    .local v2, key:I
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    invoke-static {v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 880
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 881
    const/4 v3, 0x0

    .line 883
    .local v3, resId:I
    :try_start_0
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "drawable"

    invoke-virtual {v4, p2, v6, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 889
    :goto_1
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v3, v5}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 890
    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableSparseArray:Landroid/util/SparseArray;

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "pkg"
    .parameter "res"
    .parameter "pkgAlt"
    .parameter "resAlt"

    .prologue
    .line 1210
    const/4 v0, 0x0

    .line 1211
    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNormalEmoticonDisplayed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1212
    invoke-direct {p0, p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1219
    :cond_0
    :goto_0
    return-object v0

    .line 1214
    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1215
    if-nez v0, :cond_0

    .line 1216
    invoke-direct {p0, p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;
    .locals 5
    .parameter "color"
    .parameter "indeces"

    .prologue
    const/4 v4, 0x0

    .line 1172
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_2

    .line 1173
    :cond_0
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1187
    :cond_1
    :goto_0
    return-object v0

    .line 1175
    :cond_2
    const/4 v0, 0x0

    .line 1176
    .local v0, fcspan:Landroid/text/style/ForegroundColorSpan;
    aget v2, p2, v4

    .line 1177
    .local v2, newIndex:I
    aget v3, p2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v4

    .line 1178
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanSparseArray:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 1179
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanSparseArray:Landroid/util/SparseArray;

    .line 1181
    :cond_3
    shl-int/lit8 v3, v2, 0xa

    add-int v1, v3, p1

    .line 1182
    .local v1, key:I
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-static {v3}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #fcspan:Landroid/text/style/ForegroundColorSpan;
    check-cast v0, Landroid/text/style/ForegroundColorSpan;

    .line 1183
    .restart local v0       #fcspan:Landroid/text/style/ForegroundColorSpan;
    if-nez v0, :cond_1

    .line 1184
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .end local v0           #fcspan:Landroid/text/style/ForegroundColorSpan;
    invoke-direct {v0, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1185
    .restart local v0       #fcspan:Landroid/text/style/ForegroundColorSpan;
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanSparseArray:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected static getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 730
    .local p1, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v2

    invoke-interface {p0, v1, v2, p1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 732
    .local v0, objs:[Ljava/lang/Object;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 733
    const/4 v1, 0x0

    .line 735
    :goto_0
    return-object v1

    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method private static getLocalTime(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "timestamp"

    .prologue
    .line 1275
    const-wide/16 v3, 0x3e8

    const-wide/32 v5, 0x5265c00

    const v7, 0x40010

    move-object v0, p0

    move-wide v1, p1

    invoke-static/range {v0 .. v7}, Lcom/htc/text/util/HtcDateUtils;->getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getMatchStartPosition(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)I
    .locals 4
    .parameter "text"
    .parameter "query"

    .prologue
    .line 1080
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1081
    .local v1, start:I
    if-gez v1, :cond_0

    .line 1082
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1083
    .local v2, value:Ljava/lang/String;
    invoke-static {p2}, Lcom/htc/text/AbstractSocialMarkupRenderer$Normalization;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, key:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1085
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    move v3, v1

    .line 1090
    :goto_0
    return v3

    .line 1087
    .restart local v0       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private static getNonNullString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "text"

    .prologue
    .line 1289
    if-nez p0, :cond_0

    .line 1290
    const-string p0, ""

    .line 1292
    .end local p0
    :cond_0
    return-object p0
.end method

.method private getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;ILcom/htc/text/style/PlurkQualifierSpan$AssetVer;FF)Lcom/htc/text/style/PlurkQualifierSpan;
    .locals 9
    .parameter "type"
    .parameter "name"
    .parameter "size"
    .parameter "assetver"
    .parameter "xdim"
    .parameter "ydim"

    .prologue
    .line 1119
    const/4 v0, 0x0

    .line 1120
    .local v0, pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPlurkQualifierSpanSparseArray:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1121
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPlurkQualifierSpanSparseArray:Landroid/util/SparseArray;

    .line 1123
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v8

    .line 1124
    .local v8, key:I
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPlurkQualifierSpanSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-static {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    check-cast v0, Lcom/htc/text/style/PlurkQualifierSpan;

    .line 1125
    .restart local v0       #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    if-nez v0, :cond_1

    .line 1126
    new-instance v0, Lcom/htc/text/style/PlurkQualifierSpan;

    .end local v0           #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    int-to-float v5, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/style/PlurkQualifierSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;FFF)V

    .line 1127
    .restart local v0       #pqspan:Lcom/htc/text/style/PlurkQualifierSpan;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPlurkQualifierSpanSparseArray:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1129
    :cond_1
    return-object v0
.end method

.method private getProfileSpan(Ljava/lang/String;Ljava/lang/String;IZZ[I)Lcom/htc/text/style/ProfileSpan;
    .locals 8
    .parameter "uri"
    .parameter "name"
    .parameter "color"
    .parameter "bold"
    .parameter "clickable"
    .parameter "indeces"

    .prologue
    const/4 v2, 0x0

    .line 1134
    if-eqz p6, :cond_0

    array-length v1, p6

    if-nez v1, :cond_2

    .line 1135
    :cond_0
    new-instance v0, Lcom/htc/text/style/ProfileSpan;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/style/ProfileSpan;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1149
    :cond_1
    :goto_0
    return-object v0

    .line 1137
    :cond_2
    const/4 v0, 0x0

    .line 1138
    .local v0, pspan:Lcom/htc/text/style/ProfileSpan;
    aget v7, p6, v2

    .line 1139
    .local v7, newIndex:I
    aget v1, p6, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p6, v2

    .line 1140
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanSparseArray:Landroid/util/SparseArray;

    if-nez v1, :cond_3

    .line 1141
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanSparseArray:Landroid/util/SparseArray;

    .line 1143
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    .line 1144
    .local v6, key:I
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    invoke-static {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #pspan:Lcom/htc/text/style/ProfileSpan;
    check-cast v0, Lcom/htc/text/style/ProfileSpan;

    .line 1145
    .restart local v0       #pspan:Lcom/htc/text/style/ProfileSpan;
    if-nez v0, :cond_1

    .line 1146
    new-instance v0, Lcom/htc/text/style/ProfileSpan;

    .end local v0           #pspan:Lcom/htc/text/style/ProfileSpan;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/style/ProfileSpan;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 1147
    .restart local v0       #pspan:Lcom/htc/text/style/ProfileSpan;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanSparseArray:Landroid/util/SparseArray;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 1297
    .local p0, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TT;>;"
    if-nez p0, :cond_0

    .line 1298
    const/4 v0, 0x0

    .line 1300
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private getStyleSpan(I[I)Landroid/text/style/StyleSpan;
    .locals 5
    .parameter "type"
    .parameter "indeces"

    .prologue
    const/4 v4, 0x0

    .line 1153
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_2

    .line 1154
    :cond_0
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1168
    :cond_1
    :goto_0
    return-object v2

    .line 1156
    :cond_2
    const/4 v2, 0x0

    .line 1157
    .local v2, sspan:Landroid/text/style/StyleSpan;
    aget v1, p2, v4

    .line 1158
    .local v1, newIndex:I
    aget v3, p2, v4

    add-int/lit8 v3, v3, 0x1

    aput v3, p2, v4

    .line 1159
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanSparseArray:Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 1160
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanSparseArray:Landroid/util/SparseArray;

    .line 1162
    :cond_3
    shl-int/lit8 v3, v1, 0xa

    add-int v0, v3, p1

    .line 1163
    .local v0, key:I
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    invoke-static {v3}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getReferent(Ljava/lang/ref/SoftReference;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #sspan:Landroid/text/style/StyleSpan;
    check-cast v2, Landroid/text/style/StyleSpan;

    .line 1164
    .restart local v2       #sspan:Landroid/text/style/StyleSpan;
    if-nez v2, :cond_1

    .line 1165
    new-instance v2, Landroid/text/style/StyleSpan;

    .end local v2           #sspan:Landroid/text/style/StyleSpan;
    invoke-direct {v2, p1}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 1166
    .restart local v2       #sspan:Landroid/text/style/StyleSpan;
    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanSparseArray:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private handleDecAutoLink(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V
    .locals 5
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    aget v1, p4, v3

    .line 605
    .local v1, offset:I
    add-int v3, p3, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 606
    .local v0, end:I
    add-int v2, p2, v1

    .line 607
    .local v2, start:I
    if-ltz v2, :cond_0

    if-gez v0, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    invoke-direct {p0, p1, v2, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleAutoLink(Landroid/text/SpannableStringBuilder;II)V

    goto :goto_0
.end method

.method private handleDecEmoticon(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V
    .locals 15
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 546
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    const/4 v1, 0x0

    aget v8, p4, v1

    .line 551
    .local v8, offset:I
    add-int v1, p3, v8

    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 552
    .local v4, end:I
    add-int v3, p2, v8

    .line 553
    .local v3, start:I
    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    .line 557
    const/4 v5, 0x0

    .line 558
    .local v5, alignment:I
    const/4 v6, 0x0

    .line 559
    .local v6, d:Landroid/graphics/drawable/Drawable;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 560
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 561
    .local v7, alg:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 562
    .local v9, pkg:Ljava/lang/String;
    const/4 v1, 0x2

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 563
    .local v11, res:Ljava/lang/String;
    const/4 v1, 0x3

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 564
    .local v10, pkgAlt:Ljava/lang/String;
    const/4 v1, 0x4

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 566
    .local v12, resAlt:Ljava/lang/String;
    const-string v1, "alg"

    invoke-static {v1, v7}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 567
    invoke-direct {p0, v9, v11, v10, v12}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 578
    .end local v9           #pkg:Ljava/lang/String;
    .end local v10           #pkgAlt:Ljava/lang/String;
    .end local v11           #res:Ljava/lang/String;
    .end local v12           #resAlt:Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_0

    move-object v1, p0

    move-object/from16 v2, p1

    .line 579
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleEmoticon(Landroid/text/SpannableStringBuilder;IIILandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 570
    .end local v7           #alg:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 571
    .restart local v7       #alg:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 573
    .local v13, resId:Ljava/lang/String;
    const-string v1, "alg"

    invoke-static {v1, v7}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 574
    const-string v1, "res_id"

    invoke-static {v1, v13}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 575
    .local v14, resourceId:I
    invoke-direct {p0, v14}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1
.end method

.method private handleDecEmphasis(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V
    .locals 8
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 585
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    aget v7, p4, v4

    .line 589
    .local v7, offset:I
    add-int v0, p3, v7

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 590
    .local v3, end:I
    add-int v2, p2, v7

    .line 591
    .local v2, start:I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 595
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 596
    .local v6, argb:Ljava/lang/String;
    const-string v0, "argb"

    invoke-static {v0, v6}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 598
    .local v5, argbIndex:I
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmphasisTextFontColor()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleEmphasis(Landroid/text/SpannableStringBuilder;IIII)V

    goto :goto_0
.end method

.method private handleDecFormat(Landroid/text/SpannableStringBuilder;II[ILjava/lang/String;Ljava/util/List;)V
    .locals 12
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter "type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p6, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-le p2, p3, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 392
    const/4 v1, 0x0

    aget v11, p4, v1

    .line 393
    .local v11, offset:I
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    add-int v2, p2, v11

    if-lt v1, v2, :cond_0

    .line 395
    const-string v1, "pf"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 396
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecProfile(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto :goto_0

    .line 397
    :cond_2
    const-string v1, "pf2"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 398
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecProfile2(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto :goto_0

    .line 399
    :cond_3
    const-string v1, "lk1"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 400
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryLinkFontSizeInPixel()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecLink(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;I)V

    goto :goto_0

    .line 402
    :cond_4
    const-string v1, "lk2"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 403
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryLinkFontSizeInPixel()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecLink(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;I)V

    goto :goto_0

    .line 405
    :cond_5
    const-string v1, "lk3"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 406
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTertiaryLinkFontSizeInPixel()I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecLink(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;I)V

    goto/16 :goto_0

    .line 408
    :cond_6
    const-string v1, "img"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 409
    iget-object v7, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v9

    iget-object v10, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecImage(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .line 411
    :cond_7
    const-string v1, "vid"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 412
    iget-object v7, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v9

    iget-object v10, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v10}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecImage(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .line 414
    :cond_8
    const-string v1, "plq"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 415
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecPlurkQualifier(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto/16 :goto_0

    .line 416
    :cond_9
    const-string v1, "emo"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 417
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecEmoticon(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto/16 :goto_0

    .line 418
    :cond_a
    const-string v1, "ind"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 420
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecEmoticon(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto/16 :goto_0

    .line 421
    :cond_b
    const-string v1, "emp"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 422
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecEmphasis(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto/16 :goto_0

    .line 423
    :cond_c
    const-string v1, "ak1"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    .line 424
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecAutoLink(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V

    goto/16 :goto_0

    .line 425
    :cond_d
    const-string v1, "t2"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 426
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecText(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;II)V

    goto/16 :goto_0

    .line 428
    :cond_e
    const-string v1, "t3"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 429
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTertiaryTextFontColor()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTertiaryTextFontSizeInPixel()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecText(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;II)V

    goto/16 :goto_0

    .line 431
    :cond_f
    const-string v1, "ts"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTimestampTextFontColor()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTimestampTextFontSizeInPixel()I

    move-result v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v8}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecTimestamp(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;II)V

    goto/16 :goto_0
.end method

.method private handleDecImage(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V
    .locals 12
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .parameter "bitmap"
    .parameter "minDim"
    .parameter "maxDim"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "II",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 493
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const/4 v1, 0x0

    aget v11, p4, v1

    .line 497
    .local v11, offset:I
    add-int v1, p3, v11

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 498
    .local v4, end:I
    add-int v3, p2, v11

    .line 499
    .local v3, start:I
    if-ltz v3, :cond_0

    if-ltz v4, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 505
    .local v5, uri:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, pv:Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    .line 506
    invoke-direct/range {v1 .. v10}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleImage(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 509
    .end local v5           #uri:Ljava/lang/String;
    .end local v6           #pv:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 510
    const/4 v1, 0x0

    aget v2, p4, v1

    sub-int v7, v3, v4

    add-int/2addr v2, v7

    aput v2, p4, v1

    .line 511
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 512
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {p1, v1, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 513
    const/4 v1, 0x0

    aget v2, p4, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, p4, v1

    goto :goto_0
.end method

.method private handleDecLink(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;I)V
    .locals 7
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 475
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    aget v6, p4, v5

    .line 479
    .local v6, offset:I
    add-int v0, p3, v6

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 480
    .local v3, end:I
    add-int v2, p2, v6

    .line 481
    .local v2, start:I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 485
    invoke-interface {p5, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, uri:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move v5, p6

    .line 486
    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleLink(Landroid/text/SpannableStringBuilder;IILjava/lang/String;I)V

    goto :goto_0
.end method

.method private handleDecPlurkQualifier(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V
    .locals 12
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const/4 v1, 0x0

    aget v9, p4, v1

    .line 525
    .local v9, offset:I
    add-int v1, p3, v9

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 526
    .local v8, end:I
    add-int v11, p2, v9

    .line 527
    .local v11, start:I
    if-ltz v11, :cond_0

    if-ltz v8, :cond_0

    .line 531
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 532
    .local v2, type:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 533
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierFontSizeInPixel()I

    move-result v4

    iget-object v5, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPQAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableXDim()F

    move-result v6

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v7

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;ILcom/htc/text/style/PlurkQualifierSpan$AssetVer;FF)Lcom/htc/text/style/PlurkQualifierSpan;

    move-result-object v10

    .line 538
    .local v10, qspan:Lcom/htc/text/style/PlurkQualifierSpan;
    invoke-virtual {v10}, Lcom/htc/text/style/PlurkQualifierSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    const/16 v1, 0x21

    invoke-virtual {p1, v10, v11, v8, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private handleDecProfile(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V
    .locals 9
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 439
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    aget v8, p4, v4

    .line 443
    .local v8, offset:I
    add-int v0, p3, v8

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 444
    .local v3, end:I
    add-int v2, p2, v8

    .line 445
    .local v2, start:I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 449
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 450
    .local v5, uri:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleProfile(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private handleDecProfile2(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;)V
    .locals 9
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 457
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    aget v8, p4, v4

    .line 461
    .local v8, offset:I
    add-int v0, p3, v8

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 462
    .local v3, end:I
    add-int v2, p2, v8

    .line 463
    .local v2, start:I
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    .line 467
    invoke-interface {p5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 468
    .local v5, uri:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryProfileFontColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryProfileFontSizeInPixel()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleProfile2(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private handleDecText(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;II)V
    .locals 7
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .parameter "color"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 616
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    aget v6, p4, v0

    .line 617
    .local v6, offset:I
    add-int v0, p3, v6

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 618
    .local v3, end:I
    add-int v2, p2, v6

    .line 619
    .local v2, start:I
    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move v4, p6

    move v5, p7

    .line 623
    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleText(Landroid/text/SpannableStringBuilder;IIII)V

    goto :goto_0
.end method

.method private handleDecTimestamp(Landroid/text/SpannableStringBuilder;II[ILjava/util/List;II)V
    .locals 12
    .parameter "text"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "offsets"
    .parameter
    .parameter "color"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "II[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p5, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_0

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    const/4 v1, 0x0

    aget v10, p4, v1

    .line 632
    .local v10, offset:I
    add-int v1, p3, v10

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 633
    .local v7, end:I
    add-int v3, p2, v10

    .line 634
    .local v3, start:I
    if-ltz v3, :cond_0

    if-ltz v7, :cond_0

    .line 638
    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 639
    .local v11, ts:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    const-string v2, "ts"

    invoke-static {v2, v11}, Lcom/htc/text/util/HtcStringUtils;->getLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLocalTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    .line 640
    .local v8, localTime:Ljava/lang/CharSequence;
    invoke-virtual {p1, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 641
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v7

    add-int v9, v1, v3

    .line 642
    .local v9, new_offset:I
    const/4 v1, 0x0

    aput v9, p4, v1

    .line 643
    add-int v4, v7, v9

    .local v4, new_end:I
    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p6

    move/from16 v6, p7

    .line 645
    invoke-direct/range {v1 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleTimestamp(Landroid/text/SpannableStringBuilder;IIII)V

    goto :goto_0
.end method

.method private handleHighlightString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V
    .locals 6
    .parameter "text"
    .parameter "key"

    .prologue
    const/16 v5, 0x21

    .line 927
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 928
    .local v2, textLength:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 929
    .local v0, keyLength:I
    if-eqz p1, :cond_1

    if-lt v2, v0, :cond_1

    .line 930
    invoke-direct {p0, p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getMatchStartPosition(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)I

    move-result v1

    .line 931
    .local v1, start:I
    if-ltz v1, :cond_1

    .line 932
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightForegroundColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightForegroundColor()I

    move-result v3

    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    invoke-direct {p0, v3, v4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getForegroundColorSpan(I[I)Landroid/text/style/ForegroundColorSpan;

    move-result-object v3

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightBackgroundColor()I

    move-result v3

    sget v4, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    if-eq v3, v4, :cond_1

    .line 937
    new-instance v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getHighlightBackgroundColor()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 942
    .end local v1           #start:I
    :cond_1
    return-void
.end method

.method private handleXmlEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 13
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 841
    const-string v0, ""

    const-string v1, "pkg"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, pkg:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "res"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 843
    .local v9, res:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "pkg_alt"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 844
    .local v8, pkgAlt:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "res_alt"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 845
    .local v10, resAlt:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "alg"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 846
    .local v6, alg:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "res_id"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 848
    .local v11, resId:Ljava/lang/String;
    const/4 v5, 0x0

    .line 849
    .local v5, d:Landroid/graphics/drawable/Drawable;
    const-string v0, "res_id"

    invoke-static {v0, v11}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 850
    .local v12, resourceId:I
    if-lez v12, :cond_1

    .line 851
    invoke-direct {p0, v12}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 862
    :goto_0
    if-eqz v5, :cond_0

    .line 863
    const-string v0, "alg"

    invoke-static {v0, v6}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 864
    .local v4, alignment:I
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 865
    .local v2, len:I
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 866
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleEmoticon(Landroid/text/SpannableStringBuilder;IIILandroid/graphics/drawable/Drawable;)V

    .line 868
    .end local v2           #len:I
    .end local v4           #alignment:I
    :cond_0
    return-void

    .line 853
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    move-object v8, v7

    .line 856
    :cond_2
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 857
    move-object v10, v9

    .line 859
    :cond_3
    invoke-direct {p0, v7, v9, v8, v10}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmoticonDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0
.end method

.method private handleXmlEmphasis(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 1108
    const-string v0, ""

    const-string v1, "argb"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1109
    .local v6, argb:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "value"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1111
    .local v7, value:Ljava/lang/String;
    const-string v0, "argb"

    invoke-static {v0, v6}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1112
    .local v5, argbIndex:I
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 1113
    .local v2, len:I
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1114
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getEmphasisTextFontColor()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleEmphasis(Landroid/text/SpannableStringBuilder;IIII)V

    .line 1115
    return-void
.end method

.method private handleXmlEndAutoLink(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V
    .locals 3
    .parameter "text"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 801
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 802
    .local v0, len:I
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 803
    .local v1, obj:Ljava/lang/Object;
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 805
    .local v2, where:I
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 806
    invoke-direct {p0, p1, v2, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleAutoLink(Landroid/text/SpannableStringBuilder;II)V

    .line 807
    return-void
.end method

.method private handleXmlEndLink(Landroid/text/SpannableStringBuilder;I)V
    .locals 8
    .parameter "text"
    .parameter "size"

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 788
    .local v3, len:I
    const-class v0, Lcom/htc/text/AbstractSocialMarkupRenderer$Href;

    invoke-static {p1, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 789
    .local v7, obj:Ljava/lang/Object;
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .local v2, where:I
    move-object v6, v7

    .line 790
    check-cast v6, Lcom/htc/text/AbstractSocialMarkupRenderer$Href;

    .line 791
    .local v6, h:Lcom/htc/text/AbstractSocialMarkupRenderer$Href;
    const/4 v4, 0x0

    .line 792
    .local v4, uri:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 793
    iget-object v4, v6, Lcom/htc/text/AbstractSocialMarkupRenderer$Href;->mHref:Ljava/lang/String;

    .line 796
    :cond_0
    invoke-virtual {p1, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 797
    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleLink(Landroid/text/SpannableStringBuilder;IILjava/lang/String;I)V

    .line 798
    return-void
.end method

.method private handleXmlEndTag(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 689
    const-string v0, "br"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlNewline(Landroid/text/SpannableStringBuilder;)V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    const-string v0, "pf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const-string v0, "pf2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    const-string v0, "lk1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 696
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 697
    :cond_2
    const-string v0, "lk2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 698
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 699
    :cond_3
    const-string v0, "lk3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTertiaryLinkFontSizeInPixel()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndLink(Landroid/text/SpannableStringBuilder;I)V

    goto :goto_0

    .line 701
    :cond_4
    const-string v0, "img"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    const-string v0, "vid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    const-string v0, "plq"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    const-string v0, "emo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    const-string v0, "ind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    const-string v0, "ts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 713
    const-string v0, "t2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndText(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;II)V

    goto/16 :goto_0

    .line 716
    :cond_5
    const-string v0, "t3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 717
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text3;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTertiaryTextFontColor()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTertiaryTextFontSizeInPixel()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndText(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;II)V

    goto/16 :goto_0

    .line 719
    :cond_6
    const-string v0, "emp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const-string v0, "ak1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    const-class v1, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndAutoLink(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method private handleXmlEndText(Landroid/text/SpannableStringBuilder;Ljava/lang/Class;II)V
    .locals 7
    .parameter "text"
    .parameter
    .parameter "color"
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/lang/Class",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .line 1099
    .local p2, kind:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1100
    .local v3, len:I
    invoke-static {p1, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLast(Landroid/text/Spanned;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 1101
    .local v6, obj:Ljava/lang/Object;
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 1103
    .local v2, where:I
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 1104
    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleText(Landroid/text/SpannableStringBuilder;IIII)V

    .line 1105
    return-void
.end method

.method private handleXmlImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V
    .locals 10
    .parameter "text"
    .parameter "attributes"
    .parameter "bitmap"
    .parameter "minDim"
    .parameter "maxDim"
    .parameter "callback"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    const-string v0, ""

    const-string v1, "uri"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 813
    .local v4, uri:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "pv"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, pv:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 816
    .local v2, len:I
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 817
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleImage(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V

    .line 820
    .end local v2           #len:I
    .end local v4           #uri:Ljava/lang/String;
    .end local v5           #pv:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private handleXmlNewline(Landroid/text/SpannableStringBuilder;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNewLineSpanDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 745
    :goto_0
    return-void

    .line 743
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private handleXmlPlurkQualifier(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 9
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 823
    const-string v0, ""

    const-string v3, "type"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    .local v1, type:Ljava/lang/String;
    const-string v0, ""

    const-string v3, "name"

    invoke-interface {p2, v0, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierFontSizeInPixel()I

    move-result v3

    iget-object v4, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mPQAssetVer:Lcom/htc/text/style/PlurkQualifierSpan$AssetVer;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableXDim()F

    move-result v5

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierDrawableYDim()F

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPlurkQualifierSpan(Ljava/lang/String;Ljava/lang/String;ILcom/htc/text/style/PlurkQualifierSpan$AssetVer;FF)Lcom/htc/text/style/PlurkQualifierSpan;

    move-result-object v8

    .line 831
    .local v8, qspan:Lcom/htc/text/style/PlurkQualifierSpan;
    invoke-virtual {v8}, Lcom/htc/text/style/PlurkQualifierSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    .line 833
    .local v7, len:I
    const-string v0, " "

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 834
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x21

    invoke-virtual {p1, v8, v7, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 838
    .end local v7           #len:I
    .end local v8           #qspan:Lcom/htc/text/style/PlurkQualifierSpan;
    :cond_0
    return-void
.end method

.method private handleXmlProfile(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 10
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 748
    const-string v0, ""

    const-string v1, "uri"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 749
    .local v5, uri:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 750
    .local v8, name:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "name_alt"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 753
    .local v9, nameAlt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isNormalProfileNameDisplayed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    move-object v4, v8

    .line 762
    .local v4, n:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 763
    .local v2, len:I
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 764
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleProfile(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;II)V

    .line 766
    return-void

    .line 756
    .end local v2           #len:I
    .end local v4           #n:Ljava/lang/String;
    :cond_1
    move-object v4, v9

    .line 757
    .restart local v4       #n:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    move-object v4, v8

    goto :goto_0
.end method

.method private handleXmlProfile2(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 8
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 769
    const-string v0, ""

    const-string v1, "uri"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 770
    .local v5, uri:Ljava/lang/String;
    const-string v0, ""

    const-string v1, "name"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 773
    .local v2, len:I
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 774
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryProfileFontColor()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryProfileFontSizeInPixel()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleProfile2(Landroid/text/SpannableStringBuilder;IILjava/lang/String;Ljava/lang/String;II)V

    .line 776
    return-void
.end method

.method private handleXmlStart(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V
    .locals 2
    .parameter "text"
    .parameter "mark"

    .prologue
    .line 1094
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1095
    .local v0, len:I
    const/16 v1, 0x11

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1096
    return-void
.end method

.method private handleXmlStartLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V
    .locals 5
    .parameter "text"
    .parameter "attributes"

    .prologue
    .line 779
    const-string v2, ""

    const-string v3, "uri"

    invoke-interface {p2, v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, href:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 782
    .local v1, len:I
    new-instance v2, Lcom/htc/text/AbstractSocialMarkupRenderer$Href;

    invoke-direct {v2, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer$Href;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 784
    return-void
.end method

.method private handleXmlStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter "tag"
    .parameter "attributes"

    .prologue
    .line 650
    const-string v0, "br"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    const-string v0, "pf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlProfile(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 654
    :cond_2
    const-string v0, "pf2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 655
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlProfile2(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 656
    :cond_3
    const-string v0, "lk1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStartLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 658
    :cond_4
    const-string v0, "lk2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 659
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStartLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 660
    :cond_5
    const-string v0, "lk3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStartLink(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 662
    :cond_6
    const-string v0, "img"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 663
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v5

    iget-object v6, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 665
    :cond_7
    const-string v0, "vid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 666
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v5

    iget-object v6, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlImage(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;Landroid/graphics/Bitmap;IILandroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 668
    :cond_8
    const-string v0, "plq"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 669
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlPlurkQualifier(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 670
    :cond_9
    const-string v0, "emo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 671
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 672
    :cond_a
    const-string v0, "ind"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 673
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEmoticon(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 674
    :cond_b
    const-string v0, "ts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 675
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTimestampTextFontColor()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getTimestampTextFontSizeInPixel()I

    move-result v2

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlTimestamp(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;II)V

    goto/16 :goto_0

    .line 677
    :cond_c
    const-string v0, "t2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 678
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;

    invoke-direct {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$Text2;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStart(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 679
    :cond_d
    const-string v0, "t3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 680
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$Text3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/text/AbstractSocialMarkupRenderer$Text3;-><init>(Lcom/htc/text/AbstractSocialMarkupRenderer$1;)V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStart(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 681
    :cond_e
    const-string v0, "emp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 682
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, v0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEmphasis(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;)V

    goto/16 :goto_0

    .line 683
    :cond_f
    const-string v0, "ak1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;

    invoke-direct {v1}, Lcom/htc/text/AbstractSocialMarkupRenderer$AutoLink;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStart(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private handleXmlTimestamp(Landroid/text/SpannableStringBuilder;Lorg/xml/sax/Attributes;II)V
    .locals 8
    .parameter "text"
    .parameter "attributes"
    .parameter "color"
    .parameter "size"

    .prologue
    .line 916
    const-string v0, ""

    const-string v1, "value"

    invoke-interface {p2, v0, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 918
    .local v7, ts:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 919
    .local v2, where:I
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    const-string v1, "ts"

    invoke-static {v1, v7}, Lcom/htc/text/util/HtcStringUtils;->getLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getLocalTime(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    .line 920
    .local v6, localTime:Ljava/lang/CharSequence;
    invoke-virtual {p1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 921
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .local v3, len:I
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 923
    invoke-direct/range {v0 .. v5}, Lcom/htc/text/AbstractSocialMarkupRenderer;->doHandleTimestamp(Landroid/text/SpannableStringBuilder;IIII)V

    .line 924
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 124
    return-void
.end method

.method public clearCache()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public convert()Landroid/text/Spanned;
    .locals 2

    .prologue
    .line 252
    const/4 v0, 0x0

    sget-object v1, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    invoke-virtual {p0, v0, v1}, Lcom/htc/text/AbstractSocialMarkupRenderer;->convert(Landroid/graphics/drawable/Drawable$Callback;Lcom/htc/text/tag/ITag$Format;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/graphics/drawable/Drawable$Callback;)Landroid/text/Spanned;
    .locals 1
    .parameter "callback"

    .prologue
    .line 256
    sget-object v0, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    invoke-virtual {p0, p1, v0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->convert(Landroid/graphics/drawable/Drawable$Callback;Lcom/htc/text/tag/ITag$Format;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public convert(Landroid/graphics/drawable/Drawable$Callback;Lcom/htc/text/tag/ITag$Format;)Landroid/text/Spanned;
    .locals 20
    .parameter "callback"
    .parameter "format"

    .prologue
    .line 260
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    .line 261
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultImageResId()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getImageSize()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getDefaultBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDefaultImage:Landroid/graphics/Bitmap;

    .line 265
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDrawableCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mAbsoluteSizeSpanIndeces:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mForegroundColorSpanIndeces:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mProfileSpanIndeces:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mStyleSpanIndeces:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v3, Lcom/htc/text/tag/ITag$Format;->XML:Lcom/htc/text/tag/ITag$Format;

    if-eq v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v3, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    if-ne v2, v3, :cond_5

    sget-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->SENSE:Ljava/lang/String;

    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 275
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 283
    const-string v2, "<z></z>"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    .line 286
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mReader:Lorg/xml/sax/XMLReader;

    new-instance v3, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/StringReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3

    .line 339
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleHighlightString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)V

    .line 343
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    return-object v2

    .line 276
    :catch_0
    move-exception v12

    .line 277
    .local v12, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v12}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    .line 278
    .end local v12           #e:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v12

    .line 279
    .local v12, e:Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v12}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_0

    .line 287
    .end local v12           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v12

    .line 288
    .local v12, e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 289
    .end local v12           #e:Ljava/io/IOException;
    :catch_3
    move-exception v12

    .line 290
    .local v12, e:Lorg/xml/sax/SAXException;
    invoke-virtual {v12}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 291
    sget-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/htc/opensense/widget/SNLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 293
    .end local v12           #e:Lorg/xml/sax/SAXException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v3, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    sget-object v3, Lcom/htc/text/tag/ITag$Format;->AUTO:Lcom/htc/text/tag/ITag$Format;

    if-ne v2, v3, :cond_3

    sget-object v2, Lcom/htc/text/AbstractSocialMarkupRenderer;->SENSE:Ljava/lang/String;

    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    if-lez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    if-le v2, v3, :cond_7

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    .line 300
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 301
    const/4 v2, 0x1

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mOffsets:[I

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mOffsets:[I

    const/4 v3, 0x0

    const/4 v6, 0x0

    aput v6, v2, v3

    .line 304
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v11, decorations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v10, decoration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecoration:Ljava/lang/String;

    const-string v3, "\\u0020"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 307
    .local v18, tokens:[Ljava/lang/String;
    move-object/from16 v9, v18

    .local v9, arr$:[Ljava/lang/String;
    array-length v14, v9

    .local v14, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    if-ge v13, v14, :cond_a

    aget-object v17, v9, v13

    .line 308
    .local v17, token:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 309
    const-string v2, "\n"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 310
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_8
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 312
    :cond_9
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #decoration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .restart local v10       #decoration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 318
    .end local v17           #token:Ljava/lang/String;
    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    .line 319
    .local v15, line:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 320
    .local v16, size:I
    const/4 v4, 0x0

    .line 321
    .local v4, startPosition:I
    const/4 v5, 0x0

    .line 322
    .local v5, endPosition:I
    const-string v7, ""

    .line 323
    .local v7, type:Ljava/lang/String;
    const/4 v8, 0x0

    .line 324
    .local v8, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x3

    move/from16 v0, v16

    if-lt v0, v2, :cond_b

    .line 325
    const-string v3, "startPosition"

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 326
    const-string v3, "endPosition"

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/htc/text/util/HtcStringUtils;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 327
    const/4 v2, 0x2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #type:Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 328
    .restart local v7       #type:Ljava/lang/String;
    const/4 v2, 0x4

    move/from16 v0, v16

    if-lt v0, v2, :cond_c

    .line 329
    const/4 v2, 0x3

    move/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v8

    .line 331
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSpannableStringBuilder:Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mOffsets:[I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleDecFormat(Landroid/text/SpannableStringBuilder;II[ILjava/lang/String;Ljava/util/List;)V

    goto :goto_4
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p2}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlEndTag(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract getDefaultImageResId()I
.end method

.method protected abstract getEmphasisTextFontColor()I
.end method

.method protected getHighlightBackgroundColor()I
    .locals 1

    .prologue
    .line 1450
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getHighlightForegroundColor()I
    .locals 1

    .prologue
    .line 1446
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected abstract getImageSize()I
.end method

.method protected getPlurkQualifierDrawableXDim()F
    .locals 1

    .prologue
    .line 1428
    const/4 v0, 0x0

    return v0
.end method

.method protected getPlurkQualifierDrawableYDim()F
    .locals 1

    .prologue
    .line 1435
    const/4 v0, 0x0

    return v0
.end method

.method protected getPlurkQualifierFontSizeInPixel()I
    .locals 1

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getPrimaryTextFontSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected abstract getPrimaryLinkFontSizeInPixel()I
.end method

.method protected abstract getPrimaryTextFontSizeInPixel()I
.end method

.method protected abstract getProfileFontColor()I
.end method

.method protected abstract getProfileFontSizeInPixel()I
.end method

.method protected abstract getSecondaryLinkFontSizeInPixel()I
.end method

.method protected getSecondaryProfileFontColor()I
    .locals 1

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontColor()I

    move-result v0

    return v0
.end method

.method protected getSecondaryProfileFontSizeInPixel()I
    .locals 1

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getProfileFontSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected abstract getSecondaryTextFontColor()I
.end method

.method protected abstract getSecondaryTextFontSizeInPixel()I
.end method

.method protected getTertiaryLinkFontSizeInPixel()I
    .locals 1

    .prologue
    .line 1470
    const/4 v0, 0x0

    return v0
.end method

.method protected getTertiaryTextFontColor()I
    .locals 1

    .prologue
    .line 1462
    sget v0, Lcom/htc/text/AbstractSocialMarkupRenderer;->NOCOLOR:I

    return v0
.end method

.method protected getTertiaryTextFontSizeInPixel()I
    .locals 1

    .prologue
    .line 1466
    const/4 v0, 0x0

    return v0
.end method

.method protected getTimestampTextFontColor()I
    .locals 1

    .prologue
    .line 1474
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontColor()I

    move-result v0

    return v0
.end method

.method protected getTimestampTextFontSizeInPixel()I
    .locals 1

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->getSecondaryTextFontSizeInPixel()I

    move-result v0

    return v0
.end method

.method protected getUrlDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;Landroid/graphics/drawable/Drawable$Callback;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "bitmap"
    .parameter "minDim"
    .parameter "maxDim"
    .parameter "uri"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    .line 1483
    new-instance v1, Lcom/htc/graphics/drawable/UrlDrawable$Options;

    invoke-direct {v1}, Lcom/htc/graphics/drawable/UrlDrawable$Options;-><init>()V

    .line 1484
    .local v1, options:Lcom/htc/graphics/drawable/UrlDrawable$Options;
    invoke-virtual {v1, p2}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 1485
    new-instance v2, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;

    invoke-direct {v2, p3, p4}, Lcom/htc/graphics/drawable/UrlDrawable$Dimension;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->setForceDim(Lcom/htc/graphics/drawable/UrlDrawable$Dimension;)V

    .line 1486
    invoke-virtual {v1, v4}, Lcom/htc/graphics/drawable/UrlDrawable$Options;->setSaveDefaultImageWhenDownloadFail(Z)V

    .line 1488
    new-instance v0, Lcom/htc/graphics/drawable/UrlDrawable;

    invoke-direct {v0, p1, p5, v1}, Lcom/htc/graphics/drawable/UrlDrawable;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/htc/graphics/drawable/UrlDrawable$Options;)V

    .line 1489
    .local v0, d:Lcom/htc/graphics/drawable/UrlDrawable;
    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/htc/graphics/drawable/UrlDrawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/htc/graphics/drawable/UrlDrawable;->setBounds(IIII)V

    .line 1490
    invoke-virtual {v0, p6}, Lcom/htc/graphics/drawable/UrlDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1491
    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method protected isAutoLinkEnabled()Z
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x0

    return v0
.end method

.method protected isImageDisplayed()Z
    .locals 1

    .prologue
    .line 1405
    const/4 v0, 0x1

    return v0
.end method

.method protected isNewLineSpanDisplayed()Z
    .locals 1

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/htc/text/AbstractSocialMarkupRenderer;->isImageDisplayed()Z

    move-result v0

    return v0
.end method

.method protected isNormalEmoticonDisplayed()Z
    .locals 1

    .prologue
    .line 1413
    const/4 v0, 0x1

    return v0
.end method

.method protected isNormalProfileNameDisplayed()Z
    .locals 1

    .prologue
    .line 1417
    const/4 v0, 0x1

    return v0
.end method

.method protected isSpanClickable()Z
    .locals 1

    .prologue
    .line 1401
    const/4 v0, 0x1

    return v0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method public setData(Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 3
    .parameter "source"

    .prologue
    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    .line 202
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecoration:Ljava/lang/String;

    .line 203
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    .line 212
    :cond_0
    :goto_0
    return-object p0

    .line 205
    :cond_1
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    .line 206
    iget-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mSource:Ljava/lang/String;

    const-string v2, "\\uFFFB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, a:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 208
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecoration:Ljava/lang/String;

    .line 209
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    goto :goto_0
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 1
    .parameter "rawContent"
    .parameter "decoration"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mRawContent:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecoration:Ljava/lang/String;

    .line 218
    sget-object v0, Lcom/htc/text/tag/ITag$Format;->DEC:Lcom/htc/text/tag/ITag$Format;

    iput-object v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mFormat:Lcom/htc/text/tag/ITag$Format;

    .line 219
    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "locator"

    .prologue
    .line 167
    return-void
.end method

.method public setHighlight(Ljava/lang/String;)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 0
    .parameter "key"

    .prologue
    .line 231
    iput-object p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mQueryKey:Ljava/lang/String;

    .line 232
    return-object p0
.end method

.method public setWordLimit(I)Lcom/htc/text/AbstractSocialMarkupRenderer;
    .locals 1
    .parameter "limit"

    .prologue
    .line 223
    iput p1, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    .line 224
    iget v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    if-gez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/text/AbstractSocialMarkupRenderer;->mDecWordLimit:I

    .line 227
    :cond_0
    return-object p0
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 174
    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 181
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-direct {p0, p2, p4}, Lcom/htc/text/AbstractSocialMarkupRenderer;->handleXmlStartTag(Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 190
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method
