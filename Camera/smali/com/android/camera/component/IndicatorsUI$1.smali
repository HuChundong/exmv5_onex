.class Lcom/android/camera/component/IndicatorsUI$1;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$1;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$1;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->isRemainingCounterVisible:Lcom/android/camera/property/Property;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$000(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/property/Property;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    return-void
.end method
