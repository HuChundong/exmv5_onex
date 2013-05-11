.class Lcom/android/camera/widget/PanoramaTrackingView$2;
.super Ljava/lang/Object;
.source "PanoramaTrackingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/widget/PanoramaTrackingView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/PanoramaTrackingView;

.field final synthetic val$canvas:Landroid/graphics/Canvas;

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/PanoramaTrackingView;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/PanoramaTrackingView$2;->this$0:Lcom/android/camera/widget/PanoramaTrackingView;

    iput-object p2, p0, Lcom/android/camera/widget/PanoramaTrackingView$2;->val$canvas:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/android/camera/widget/PanoramaTrackingView$2;->val$rect:Landroid/graphics/Rect;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/widget/PanoramaTrackingView$2;->this$0:Lcom/android/camera/widget/PanoramaTrackingView;

    iget-object v1, p0, Lcom/android/camera/widget/PanoramaTrackingView$2;->val$canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/camera/widget/PanoramaTrackingView$2;->val$rect:Landroid/graphics/Rect;

    #calls: Lcom/android/camera/widget/PanoramaTrackingView;->drawTrackingBox(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/widget/PanoramaTrackingView;->access$100(Lcom/android/camera/widget/PanoramaTrackingView;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    return-void
.end method
