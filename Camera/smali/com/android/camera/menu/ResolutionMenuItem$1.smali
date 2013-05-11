.class Lcom/android/camera/menu/ResolutionMenuItem$1;
.super Ljava/lang/Object;
.source "ResolutionMenuItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/ResolutionMenuItem;->setCameraThreadListener()V
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

    iput-object p1, p0, Lcom/android/camera/menu/ResolutionMenuItem$1;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ResolutionMenuItem$1;->this$0:Lcom/android/camera/menu/ResolutionMenuItem;

    #calls: Lcom/android/camera/menu/ResolutionMenuItem;->linkToCameraThread()V
    invoke-static {v0}, Lcom/android/camera/menu/ResolutionMenuItem;->access$100(Lcom/android/camera/menu/ResolutionMenuItem;)V

    return-void
.end method
