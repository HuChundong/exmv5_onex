.class Lcom/android/camera/component/IndicatorsUI$11;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Lcom/android/camera/event/EventHandler;


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
        "Lcom/android/camera/event/EventHandler",
        "<",
        "Lcom/android/camera/OneValueEventArgs",
        "<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/event/Event",
            "<",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Object;",
            "Lcom/android/camera/OneValueEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1400(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerCounter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1400(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$11;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v0, p3, Lcom/android/camera/OneValueEventArgs;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/android/camera/component/IndicatorsUI;->getSelfTimerCounterImage(I)I
    invoke-static {v2, v0}, Lcom/android/camera/component/IndicatorsUI;->access$1500(Lcom/android/camera/component/IndicatorsUI;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/android/camera/OneValueEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/component/IndicatorsUI$11;->onEventReceived(Lcom/android/camera/event/Event;Ljava/lang/Object;Lcom/android/camera/OneValueEventArgs;)V

    return-void
.end method
