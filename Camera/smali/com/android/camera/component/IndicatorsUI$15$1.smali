.class Lcom/android/camera/component/IndicatorsUI$15$1;
.super Ljava/lang/Object;
.source "IndicatorsUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IndicatorsUI$15;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/component/IndicatorsUI$15;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IndicatorsUI$15;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IndicatorsUI$15$1;->this$1:Lcom/android/camera/component/IndicatorsUI$15;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IndicatorsUI$15$1;->this$1:Lcom/android/camera/component/IndicatorsUI$15;

    iget-object v0, v0, Lcom/android/camera/component/IndicatorsUI$15;->this$0:Lcom/android/camera/component/IndicatorsUI;

    #calls: Lcom/android/camera/component/IndicatorsUI;->showRemainingCounter()V
    invoke-static {v0}, Lcom/android/camera/component/IndicatorsUI;->access$1600(Lcom/android/camera/component/IndicatorsUI;)V

    return-void
.end method
