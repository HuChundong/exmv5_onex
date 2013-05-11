.class public final Lcom/android/camera/widget/ColorMultiplyRenderer;
.super Ljava/lang/Object;
.source "ColorMultiplyRenderer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlayColor(Landroid/content/Context;)I
    .locals 2

    const-string v0, "overlay_color"

    const-string v1, "com.htc.R.color.overlay_color"

    invoke-static {v1}, Lcom/android/camera/ViewUtil;->getHtcInternalResourceId(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/camera/Skin;->getColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static render(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/graphics/RectF;Ljava/lang/Runnable;)V
    .locals 3

    if-eqz p0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    invoke-static {p0}, Lcom/android/camera/widget/ColorMultiplyRenderer;->getOverlayColor(Landroid/content/Context;)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method
