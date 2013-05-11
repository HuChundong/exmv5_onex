.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitlePreference;
.super Ljava/lang/Object;
.source "SubtitlePreference.java"


# static fields
.field private static final PREFERENCES_ENCODING:Ljava/lang/String; = "subtitle_encoding"

.field private static final PREFERENCES_LANG:Ljava/lang/String; = "subtitle_lang"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEncoding(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    const-string v1, "subtitle_encoding"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "subtitle_encoding"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLang(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 38
    const-string v1, "subtitle_lang"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "subtitle_lang"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static setEncoding(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "charset"
    .parameter "context"

    .prologue
    .line 16
    const-string v2, "subtitle_encoding"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 17
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 18
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "subtitle_encoding"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public static setLang(ILandroid/content/Context;)V
    .locals 4
    .parameter "langIdx"
    .parameter "context"

    .prologue
    .line 30
    const-string v2, "subtitle_lang"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "subtitle_lang"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    return-void
.end method
