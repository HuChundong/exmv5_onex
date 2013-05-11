.class final Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ThumbnailUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ThumbnailUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThumbnailDrawable"
.end annotation


# instance fields
.field private final m_ThumbnailBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/camera/component/ThumbnailUI;


# direct methods
.method public constructor <init>(Lcom/android/camera/component/ThumbnailUI;Landroid/content/res/Resources;)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    invoke-virtual {v2}, Lcom/android/camera/component/ThumbnailUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    iget-object v2, v0, Lcom/android/camera/CameraSettings;->isMenuBarTransEnabled:Lcom/android/camera/property/Property;

    invoke-virtual {v2}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x7f02005e

    goto :goto_0

    :cond_0
    const v0, 0x7f020127

    :goto_0
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    const v1, 0x7f0b00c3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    const v1, 0x7f0b00c4

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const v2, 0x7f0b00c5

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const v2, 0x7f0b00c6

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$300(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThumbnailDrawable.draw() - start"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$500(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThumbnailDrawable.draw() - Draw thumbnail image"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/component/ThumbnailUI;->m_ThumbnailImage:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$400(Lcom/android/camera/component/ThumbnailUI;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->m_ThumbnailBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$700(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThumbnailDrawable.draw() - end"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/camera/component/ThumbnailUI$ThumbnailDrawable;->this$0:Lcom/android/camera/component/ThumbnailUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/component/ThumbnailUI;->access$600(Lcom/android/camera/component/ThumbnailUI;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThumbnailDrawable.draw() - No thumbnail image to draw"

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
