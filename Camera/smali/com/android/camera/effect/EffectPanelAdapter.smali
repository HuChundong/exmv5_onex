.class public Lcom/android/camera/effect/EffectPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "EffectPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectPanelAdapter$1;,
        Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static m_ImageAndTextTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_EffectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_Rotation:Lcom/android/camera/rotate/UIRotation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EffectPanelAdapter"

    sput-object v0, Lcom/android/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    iput-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-static {p1}, Lcom/android/camera/effect/EffectPanelAdapter;->createEffectIconDrawableHashTable(Lcom/android/camera/HTCCamera;)V

    return-void

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static createEffectIconDrawableHashTable(Lcom/android/camera/HTCCamera;)V
    .locals 9

    const v8, 0x7f02007a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    const-string v2, "createDrawableHashTable() - start"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/HTCCamera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "mono"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "negative"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "solarize"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020082

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "posterize"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020080

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "aqua"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020075

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00fb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "distortion"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020079

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0102

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vignette"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020083

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0103

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "depth"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020078

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0101

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "dots"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0107

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "maple"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0108

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "nash"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007d

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0109

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "splittoning_mono"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "splittoning_color"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a010b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-high"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020077

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0106

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-red"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020084

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0104

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-green"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020076

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a0105

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "vintage-sepia"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f020081

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    const-string v2, "none"

    new-array v3, v7, [Ljava/lang/Object;

    const v4, 0x7f02007f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0a00f0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/camera/effect/EffectPanelAdapter;->TAG:Ljava/lang/String;

    const-string v2, "createDrawableHashTable() - end"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initialize(Lcom/android/camera/HTCCamera;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_2

    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;

    invoke-direct {v3, v8}, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;-><init>(Lcom/android/camera/effect/EffectPanelAdapter$1;)V

    const v4, 0x7f080067

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/camera/rotate/RotateLinearLayout;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/android/camera/rotate/RotateLinearLayout;

    const v4, 0x7f080069

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f08006a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    const v4, 0x7f08006b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/EffectBase;

    sget-object v4, Lcom/android/camera/effect/EffectPanelAdapter;->m_ImageAndTextTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/Object;

    :cond_0
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->containerView:Lcom/android/camera/rotate/RotateLinearLayout;

    iget-object v5, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4, v5}, Lcom/android/camera/rotate/RotateLinearLayout;->setRotation(Lcom/android/camera/rotate/UIRotation;)V

    aget-object v0, v2, v6

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    aget-object v4, v2, v7

    if-eqz v4, :cond_4

    iget-object v5, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    aget-object v4, v2, v7

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-eq v4, v1, :cond_5

    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v4, v6}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    :cond_1
    invoke-virtual {p2, v6}, Landroid/view/View;->setSelected(Z)V

    :goto_3
    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v4

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;

    goto :goto_0

    :cond_3
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    instance-of v4, v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    if-eqz v4, :cond_6

    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->textView:Landroid/widget/TextView;

    check-cast v4, Lcom/android/camera/widget/ColorMultiplyTextView;

    invoke-virtual {v4, v7}, Lcom/android/camera/widget/ColorMultiplyTextView;->applyColorMultiplication(Z)V

    :cond_6
    invoke-virtual {p2, v7}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    :cond_7
    iget-object v4, v3, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;->indicatorImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public final setRotation(Lcom/android/camera/rotate/UIRotation;)V
    .locals 2

    sget-object v0, Lcom/android/camera/effect/EffectPanelAdapter$1;->$SwitchMap$com$android$camera$rotate$UIRotation:[I

    invoke-virtual {p1}, Lcom/android/camera/rotate/UIRotation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_Rotation:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    return-void

    :pswitch_0
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->InversePortrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v0}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Portrait:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/rotate/UIRotation;->Landscape:Lcom/android/camera/rotate/UIRotation;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateEffectList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelAdapter;->m_EffectList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/camera/effect/EffectPanelAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method
