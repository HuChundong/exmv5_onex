.class Lcom/android/camera/component/ObjectTrackingRenderer$6;
.super Ljava/lang/Object;
.source "ObjectTrackingRenderer.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingRenderer;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/camera/ObjectTrackingInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

.field final synthetic val$viewFinder:Lcom/android/camera/IViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    iput-object p2, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->val$viewFinder:Lcom/android/camera/IViewFinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;>;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;
    invoke-static {v1, v2}, Lcom/android/camera/component/ObjectTrackingRenderer;->access$202(Lcom/android/camera/component/ObjectTrackingRenderer;[Lcom/android/camera/ObjectTrackingInfo;)[Lcom/android/camera/ObjectTrackingInfo;

    :goto_0
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->val$viewFinder:Lcom/android/camera/IViewFinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->val$viewFinder:Lcom/android/camera/IViewFinder;

    invoke-virtual {v1}, Lcom/android/camera/IViewFinder;->invalidatePreviewFilter()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/camera/ObjectTrackingInfo;

    #setter for: Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;
    invoke-static {v1, v2}, Lcom/android/camera/component/ObjectTrackingRenderer;->access$202(Lcom/android/camera/component/ObjectTrackingRenderer;[Lcom/android/camera/ObjectTrackingInfo;)[Lcom/android/camera/ObjectTrackingInfo;

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$6;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    #getter for: Lcom/android/camera/component/ObjectTrackingRenderer;->m_DetectedObjects:[Lcom/android/camera/ObjectTrackingInfo;
    invoke-static {v1}, Lcom/android/camera/component/ObjectTrackingRenderer;->access$200(Lcom/android/camera/component/ObjectTrackingRenderer;)[Lcom/android/camera/ObjectTrackingInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method
