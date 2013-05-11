.class Lcom/android/camera/menu/ResolutionMenuItem$2$1;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/ResolutionMenuItem$2;->onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/menu/ResolutionMenuItem$2;

.field final synthetic val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

.field final synthetic val$property:Lcom/android/camera/property/Property;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/ResolutionMenuItem$2;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem$2$1;->this$1:Lcom/android/camera/menu/ResolutionMenuItem$2;

    iput-object p2, p0, Lcom/android/camera/menu/ResolutionMenuItem$2$1;->val$property:Lcom/android/camera/property/Property;

    iput-object p3, p0, Lcom/android/camera/menu/ResolutionMenuItem$2$1;->val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem$2$1;->this$1:Lcom/android/camera/menu/ResolutionMenuItem$2;

    iget-object v0, v0, Lcom/android/camera/menu/ResolutionMenuItem$2;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ResolutionMenuItem$2$1;->val$property:Lcom/android/camera/property/Property;

    iget-object v2, p0, Lcom/android/camera/menu/ResolutionMenuItem$2$1;->val$e:Lcom/android/camera/property/PropertyChangedEventArgs;

    #calls: Lcom/android/camera/menu/ResolutionMenuItem;->onCameraThreadPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    invoke-static {v0, v1, v2}, Lcom/android/camera/menu/ResolutionMenuItem;->access$200(Lcom/android/camera/menu/ResolutionMenuItem;Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V

    return-void
.end method
