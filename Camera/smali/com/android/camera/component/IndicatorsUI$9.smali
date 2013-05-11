.class Lcom/android/camera/component/IndicatorsUI$9;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->initializeOverride()V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isActivityPaused:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/camera/HTCCamera;->isPreviewStarted:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;ZZ)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1000(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v2}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v1, v4, v3}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;ZZ)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v1, v4}, Lcom/android/camera/component/IndicatorsUI;->access$600(Lcom/android/camera/component/IndicatorsUI;Z)V

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$9;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v2}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    goto :goto_0
.end method
