.class Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;
.super Ljava/lang/Object;
.source "AlbumSettings.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/addons/slideshow/AlbumSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceMusicPickerClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/AlbumSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/AlbumSettings$PreferenceMusicPickerClick;->this$0:Lcom/htc/album/addons/slideshow/AlbumSettings;

    invoke-static {v0}, Lcom/htc/album/addons/slideshow/SlideshowBase;->launchMusicPicker(Landroid/app/Activity;)V

    .line 411
    const/4 v0, 0x0

    return v0
.end method
