.class public final Lcom/android/camera/Skin;
.super Ljava/lang/Object;
.source "Skin.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    if-nez p0, :cond_0

    const/high16 v1, -0x100

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1
.end method

.method public static getDrawable(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0, p1, p2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1
.end method
