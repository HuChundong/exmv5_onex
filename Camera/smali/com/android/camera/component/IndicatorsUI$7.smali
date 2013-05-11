.class Lcom/android/camera/component/IndicatorsUI$7;
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

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$7;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$7;->this$0:Lcom/android/camera/component/IndicatorsUI;

    const/4 v1, 0x0

    #calls: Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/component/IndicatorsUI;->access$600(Lcom/android/camera/component/IndicatorsUI;Z)V

    return-void
.end method
