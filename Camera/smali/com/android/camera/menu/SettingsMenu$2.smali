.class Lcom/android/camera/menu/SettingsMenu$2;
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

    iput-object p1, p0, Lcom/android/camera/menu/SettingsMenu$2;->this$0:Lcom/android/camera/menu/SettingsMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
