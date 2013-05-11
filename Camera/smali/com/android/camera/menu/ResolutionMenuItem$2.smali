.class Lcom/android/camera/menu/ResolutionMenuItem$2;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/ResolutionMenuItem;->linkToCameraThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/menu/ResolutionMenuItem;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/ResolutionMenuItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem$2;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem$2;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    #getter for: Lcom/android/camera/menu/ResolutionMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/menu/ResolutionMenuItem;->access$300(Lcom/android/camera/menu/ResolutionMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    new-instance v1, Lcom/android/camera/menu/ResolutionMenuItem$2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/menu/ResolutionMenuItem$2$1;-><init>(Lcom/android/camera/menu/ResolutionMenuItem$2;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->invokeAsync(Ljava/lang/Runnable;)Z

    return-void
.end method
