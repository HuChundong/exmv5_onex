.class Lcom/android/camera/menu/SettingsMenu$1;
.super Ljava/lang/Object;
.source "SettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/menu/SettingsMenu;->resetToDefault()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/menu/SettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/menu/SettingsMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu$1;->this$0:Lcom/android/camera/menu/SettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/SettingsMenu$1;->this$0:Lcom/android/camera/menu/SettingsMenu;

    #getter for: Lcom/android/camera/menu/SettingsMenu;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/menu/SettingsMenu;->access$000(Lcom/android/camera/menu/SettingsMenu;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->resetToDefault()V

    return-void
.end method
