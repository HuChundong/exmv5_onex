.class Lcom/android/camera/component/IndicatorsUI$12;
.super Lcom/android/camera/trigger/Trigger;
.source "IndicatorsUI.java"


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


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateSelfTimerIndicator()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1000(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateMuteIndicator()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1100(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-virtual {v1}, Lcom/android/camera/component/IndicatorsUI;->getBaseLayout()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/camera/component/IndicatorsUI;->showUI(Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showIndicators()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$900(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1600(Lcom/android/camera/component/IndicatorsUI;)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$12;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/IndicatorsUI;->updateTapCaptureBubbleToast(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/android/camera/component/IndicatorsUI;->access$1200(Lcom/android/camera/component/IndicatorsUI;ZZ)V

    return-void
.end method
