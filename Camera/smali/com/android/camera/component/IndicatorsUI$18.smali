.class Lcom/android/camera/component/IndicatorsUI$18;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;

.field final synthetic val$resolutionChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/PropertyChangedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$18;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iput-object p2, p0, Lcom/android/camera/component/IndicatorsUI$18;->val$resolutionChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$18;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const-class v2, Lcom/android/camera/ICaptureResolutionManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/IndicatorsUI;->getCameraThreadComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ICaptureResolutionManager;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/camera/ICaptureResolutionManager;->photoResolution:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$18;->val$resolutionChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    iget-object v1, v0, Lcom/android/camera/ICaptureResolutionManager;->videoResolution:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$18;->val$resolutionChangedCallback:Lcom/android/camera/property/PropertyChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$18;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1800(Lcom/android/camera/component/IndicatorsUI;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No ICaptureResolutionManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
