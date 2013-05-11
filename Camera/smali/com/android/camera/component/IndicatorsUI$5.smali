.class Lcom/android/camera/component/IndicatorsUI$5;
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
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IndicatorsUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v1, Lcom/android/camera/component/IndicatorsUI$22;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/UIState;

    invoke-virtual {v0}, Lcom/android/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showIndicators()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$900(Lcom/android/camera/component/IndicatorsUI;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$100(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_SelfTimerIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$200(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    #calls: Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    iget-object v1, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicatorContainer:Lcom/android/camera/rotate/RotateRelativeLayout;
    invoke-static {v1}, Lcom/android/camera/component/IndicatorsUI;->access$400(Lcom/android/camera/component/IndicatorsUI;)Lcom/android/camera/rotate/RotateRelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #getter for: Lcom/android/camera/component/IndicatorsUI;->m_MuteIndicator:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/camera/component/IndicatorsUI;->access$500(Lcom/android/camera/component/IndicatorsUI;)Landroid/widget/ImageView;

    move-result-object v2

    #calls: Lcom/android/camera/component/IndicatorsUI;->setIndicatorVisibility(Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/component/IndicatorsUI;->access$300(Lcom/android/camera/component/IndicatorsUI;Lcom/android/camera/rotate/RotateRelativeLayout;Landroid/widget/ImageView;Z)V

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$5;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->hideRemainingCounter(Z)V
    invoke-static {v0, v3}, Lcom/android/camera/component/IndicatorsUI;->access$600(Lcom/android/camera/component/IndicatorsUI;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
