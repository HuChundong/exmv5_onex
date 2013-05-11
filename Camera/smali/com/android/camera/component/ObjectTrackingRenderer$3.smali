.class Lcom/android/camera/component/ObjectTrackingRenderer$3;
.super Lcom/android/camera/trigger/Trigger;
.source "ObjectTrackingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ObjectTrackingRenderer;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

.field final synthetic val$viewFinder:Lcom/android/camera/IViewFinder;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/property/Property;Ljava/lang/Object;Lcom/android/camera/IViewFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$3;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    iput-object p4, p0, Lcom/android/camera/component/ObjectTrackingRenderer$3;->val$viewFinder:Lcom/android/camera/IViewFinder;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/ObjectTrackingRenderer$3;->this$0:Lcom/android/camera/component/ObjectTrackingRenderer;

    iget-object v1, p0, Lcom/android/camera/component/ObjectTrackingRenderer$3;->val$viewFinder:Lcom/android/camera/IViewFinder;

    #calls: Lcom/android/camera/component/ObjectTrackingRenderer;->clearObjects(Lcom/android/camera/IViewFinder;)V
    invoke-static {v0, v1}, Lcom/android/camera/component/ObjectTrackingRenderer;->access$100(Lcom/android/camera/component/ObjectTrackingRenderer;Lcom/android/camera/IViewFinder;)V

    return-void
.end method
