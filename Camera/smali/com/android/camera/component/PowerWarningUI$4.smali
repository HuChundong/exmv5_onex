.class Lcom/android/camera/component/PowerWarningUI$4;
.super Lcom/android/camera/trigger/Trigger;
.source "PowerWarningUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PowerWarningUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerWarningUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerWarningUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerWarningUI$4;->this$0:Lcom/android/camera/component/PowerWarningUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI$4;->this$0:Lcom/android/camera/component/PowerWarningUI;

    #calls: Lcom/android/camera/component/PowerWarningUI;->resetPowerWarningSettings()V
    invoke-static {v0}, Lcom/android/camera/component/PowerWarningUI;->access$100(Lcom/android/camera/component/PowerWarningUI;)V

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningUI$4;->this$0:Lcom/android/camera/component/PowerWarningUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/PowerWarningUI;->updateWarningLayout(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/PowerWarningUI;->access$200(Lcom/android/camera/component/PowerWarningUI;Z)V

    return-void
.end method
