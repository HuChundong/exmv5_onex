.class Lcom/android/camera/component/ObjectTrackingRenderer$7;
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
        "Lcom/android/camera/ObjectTrackingInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

.field final synthetic val$viewFinder:Lcom/android/camera/IViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    iput-object p2, p0, Lcom/android/camera/component/ObjectTrackingRenderer$7;->val$viewFinder:Lcom/android/camera/IViewFinder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/ObjectTrackingInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$7;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/ObjectTrackingInfo;

    #setter for: Lcom/android/camera/component/ObjectTrackingRenderer;->m_FocusedObject:Lcom/android/camera/ObjectTrackingInfo;
    invoke-static {v1, v0}, Lcom/android/camera/component/ObjectTrackingRenderer;->access$302(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/ObjectTrackingInfo;)Lcom/android/camera/ObjectTrackingInfo;

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer$7;->val$viewFinder:Lcom/android/camera/IViewFinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer$7;->val$viewFinder:Lcom/android/camera/IViewFinder;

    invoke-virtual {v0}, Lcom/android/camera/IViewFinder;->invalidatePreviewFilter()V

    :cond_0
    return-void
.end method
