.class public Lcom/htc/videowidget/videoDMC/PlaybackPreference;
.super Ljava/lang/Object;
.source "PlaybackPreference.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final PREFERENCES_CAPTURE_FRAME:Ljava/lang/String; = "video_playback_capture_frame"

.field private static final PREFERENCES_ENCODING:Ljava/lang/String; = "video_playback_encoding"

.field private static final PREFERENCES_NAME:Ljava/lang/String; = "video_playback_prefs"

.field private static final PREFERENCES_PATH_NAME:Ljava/lang/String; = "video_playback_path_name"

.field private static final PREFERENCES_SMI_LANG:Ljava/lang/String; = "video_playback_smi_lang"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPreferences(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 36
    const-string v2, "video_playback_prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public static getCapture(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    const-string v1, "video_playback_capture_frame"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "video_playback_capture_frame"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getEncoding(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 52
    const-string v1, "video_playback_encoding"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "video_playback_encoding"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFilmPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 94
    const-string v1, "video_playback_path_name"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "video_playback_path_name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFilmPausePosition(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3
    .parameter "fileName"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string v1, "video_playback_prefs"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getLang(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v1, "video_playback_smi_lang"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "video_playback_smi_lang"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static setCapture(ZLandroid/content/Context;)V
    .locals 4
    .parameter "enableCapture"
    .parameter "context"

    .prologue
    .line 72
    const-string v2, "video_playback_capture_frame"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 73
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 74
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_playback_capture_frame"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public static setEncoding(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "charset"
    .parameter "context"

    .prologue
    .line 44
    const-string v2, "video_playback_encoding"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 45
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_playback_encoding"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 48
    return-void
.end method

.method public static setFilmPath(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "fileName"
    .parameter "context"

    .prologue
    .line 86
    const-string v2, "video_playback_path_name"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_playback_path_name"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method public static setFilmPausePosition(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 4
    .parameter "fileName"
    .parameter "milisecons"
    .parameter "context"

    .prologue
    .line 22
    const-string v2, "video_playback_prefs"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 24
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 26
    return-void
.end method

.method public static setLang(ILandroid/content/Context;)V
    .locals 4
    .parameter "langIdx"
    .parameter "context"

    .prologue
    .line 58
    const-string v2, "video_playback_smi_lang"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 59
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 60
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_playback_smi_lang"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method
