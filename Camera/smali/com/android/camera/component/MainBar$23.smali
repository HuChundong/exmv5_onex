.class Lcom/android/camera/component/MainBar$23;
.super Ljava/lang/Object;
.source "MainBar.java"

# interfaces
.implements Lcom/android/camera/menu/MenuListView$OnMenuItemClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeSettingsPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$23;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/android/camera/menu/MenuListView;Lcom/android/camera/menu/MenuItem;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$23;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->onSettingsMenuItemClicked(Lcom/android/camera/menu/MenuItem;I)V
    invoke-static {v0, p2, p4}, Lcom/android/camera/component/MainBar;->access$1900(Lcom/android/camera/component/MainBar;Lcom/android/camera/menu/MenuItem;I)V

    return-void
.end method
