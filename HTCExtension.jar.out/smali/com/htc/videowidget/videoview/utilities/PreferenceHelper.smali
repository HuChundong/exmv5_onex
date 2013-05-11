.class public final Lcom/htc/videowidget/videoview/utilities/PreferenceHelper;
.super Ljava/lang/Object;
.source "PreferenceHelper.java"


# static fields
.field private static final PREF_CAPTURE_FRAME:Ljava/lang/String; = "video_playback_capture_frame"

.field private static final PREF_KEY_POSITION:Ljava/lang/String; = "perf_key_streampath"

.field private static final PREF_KEY_VIDEOMODE:Ljava/lang/String; = "perf_key_videomode"

.field private static final PREF_PLAYER:Ljava/lang/String; = "pref_player"

.field private static final PREF_PLAYER_POSITION:Ljava/lang/String; = "pref_player_position"

.field private static final PREF_PLAYER_SEQUENCE:Ljava/lang/String; = "pref_player_sequence.txt"

.field private static final PREF_STREAM_POSITION:Ljava/lang/String; = "pref_stream_position"

.field private static final PREF_STREAM_SAVEPATH:Ljava/lang/String; = "pref_stream_savepath"

.field private static final PREF_STR_FILLSCREEN:Ljava/lang/String; = "fillScreen"

.field private static final PREF_STR_FITTOSCREEN:Ljava/lang/String; = "fitToScreen"

.field private static final TAG:Ljava/lang/String; = "PreferenceHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCapturePref(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 111
    const-string v1, "video_playback_capture_frame"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "video_playback_capture_frame"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static readLastPositionFromSharePref(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v0, 0x0

    .line 28
    const-string v2, "PreferenceHelper"

    const-string v3, "****[readLastPositionFromSharePref]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**  context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**  path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return v0

    .line 32
    :cond_1
    const-string v2, "pref_player_position"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, result:I
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**  result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v2, "PreferenceHelper"

    const-string v3, "***********************************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readLastStreamPosFromSharePref(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 58
    if-nez p1, :cond_0

    move v0, v2

    .line 67
    :goto_0
    return v0

    .line 59
    :cond_0
    if-nez p0, :cond_1

    move v0, v2

    goto :goto_0

    .line 60
    :cond_1
    const-string v3, "pref_stream_position"

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 61
    .local v1, sp:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 62
    .local v0, pos:I
    const-string v3, "pref_stream_savepath"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    const-string v3, "perf_key_streampath"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    :cond_2
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readLastStreamPosFromSharePref path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static readVideoModeFromSharePref(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 82
    const-string v2, "pref_player"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "perf_key_videomode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, s:Ljava/lang/String;
    const-string v2, "fitToScreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v2, 0x1

    .line 88
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setCapturePref(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enableCapture"

    .prologue
    .line 103
    const-string v2, "video_playback_capture_frame"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 104
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "video_playback_capture_frame"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method public static writeLastPositionToSharePref(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "position"
    .parameter "path"

    .prologue
    .line 40
    const-string v2, "PreferenceHelper"

    const-string v3, "****[writeLastPositionToSharePref]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**  context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**  path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v2, "PreferenceHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "**  position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v2, "PreferenceHelper"

    const-string v3, "***********************************"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    if-nez p0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v2, "pref_player_position"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    new-instance v1, Lcom/htc/videowidget/videoview/utilities/LRUPreference;

    const-string v2, "pref_player_sequence.txt"

    invoke-direct {v1, p0, v2}, Lcom/htc/videowidget/videoview/utilities/LRUPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .local v1, lruPreference:Lcom/htc/videowidget/videoview/utilities/LRUPreference;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LRUPreference;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static writeLastStreamPosFromSharePref(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "position"
    .parameter "path"

    .prologue
    .line 71
    if-nez p2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    if-ltz p1, :cond_0

    .line 73
    const-string v1, "PreferenceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLastStreamPosFromSharePref path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/videowidget/videoview/utilities/LOG;->I(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "pref_stream_position"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "perf_key_streampath"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v1, "pref_stream_savepath"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method public static writeVideoModeToSharePref(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "nMode"

    .prologue
    .line 93
    const-string v1, "pref_player"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 95
    const-string v1, "perf_key_videomode"

    const-string v2, "fillScreen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void

    .line 96
    :cond_1
    if-nez p1, :cond_0

    .line 97
    const-string v1, "perf_key_videomode"

    const-string v2, "fitToScreen"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
