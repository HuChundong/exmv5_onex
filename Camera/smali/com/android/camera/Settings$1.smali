.class Lcom/android/camera/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Settings;


# direct methods
.method constructor <init>(Lcom/android/camera/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/Settings$1;->this$0:Lcom/android/camera/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/Settings$1;->this$0:Lcom/android/camera/Settings;

    iget-object v0, v0, Lcom/android/camera/Settings;->preferenceChangedEvent:Lcom/android/camera/event/Event;

    iget-object v1, p0, Lcom/android/camera/Settings$1;->this$0:Lcom/android/camera/Settings;

    new-instance v2, Lcom/android/camera/OneValueEventArgs;

    invoke-direct {v2, p2}, Lcom/android/camera/OneValueEventArgs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    return-void
.end method
