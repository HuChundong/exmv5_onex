.class Lcom/android/camera/component/MainBar$16;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
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
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$16;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2
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

    iget-object v1, p0, Lcom/android/camera/component/MainBar$16;->this$0:Lcom/android/camera/component/MainBar;

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/UIState;

    #calls: Lcom/android/camera/component/MainBar;->onSettingsPanelStateChanged(Lcom/android/camera/UIState;)V
    invoke-static {v1, v0}, Lcom/android/camera/component/MainBar;->access$1600(Lcom/android/camera/component/MainBar;Lcom/android/camera/UIState;)V

    return-void
.end method
