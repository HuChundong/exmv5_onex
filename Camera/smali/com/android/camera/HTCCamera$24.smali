.class Lcom/android/camera/HTCCamera$24;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera;->linkToCameraThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/HTCCamera;

.field final synthetic val$previewSize:Lcom/android/camera/imaging/Size;

.field final synthetic val$zoomRange:Lcom/android/camera/Range;

.field final synthetic val$zoomvalue:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;Ljava/lang/Integer;Lcom/android/camera/Range;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$24;->val$previewSize:Lcom/android/camera/imaging/Size;

    iput-object p3, p0, Lcom/android/camera/HTCCamera$24;->val$zoomvalue:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/camera/HTCCamera$24;->val$zoomRange:Lcom/android/camera/Range;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/HTCCamera$24;->val$previewSize:Lcom/android/camera/imaging/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$24;->val$previewSize:Lcom/android/camera/imaging/Size;

    #calls: Lcom/android/camera/HTCCamera;->onPreviewSizeChanged(Lcom/android/camera/imaging/Size;)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$3100(Lcom/android/camera/HTCCamera;Lcom/android/camera/imaging/Size;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$24;->val$zoomvalue:Ljava/lang/Integer;

    #calls: Lcom/android/camera/HTCCamera;->onZoomValueChanged(Ljava/lang/Integer;)V
    invoke-static {v0, v1}, Lcom/android/camera/HTCCamera;->access$3200(Lcom/android/camera/HTCCamera;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->zoomRange:Lcom/android/camera/property/Property;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$24;->this$0:Lcom/android/camera/HTCCamera;

    #getter for: Lcom/android/camera/HTCCamera;->mPropertyOwnerKey:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/camera/HTCCamera;->access$600(Lcom/android/camera/HTCCamera;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/HTCCamera$24;->val$zoomRange:Lcom/android/camera/Range;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
