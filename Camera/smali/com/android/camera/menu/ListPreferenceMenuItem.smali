.class public Lcom/android/camera/menu/ListPreferenceMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ListPreferenceMenuItem.java"


# instance fields
.field private final m_DefaultValue:Ljava/lang/String;

.field private final m_DisplayValues:I

.field private final m_Items:[Lcom/android/camera/menu/MenuItem;

.field private final m_PreferenceKey:Ljava/lang/String;

.field private final m_Resources:Landroid/content/res/Resources;

.field private final m_Settings:Lcom/android/camera/Settings;

.field private final m_Values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/Settings;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p4, v1}, Lcom/android/camera/menu/MenuItem;-><init>(II)V

    iput-object p2, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Settings:Lcom/android/camera/Settings;

    iput-object p3, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    invoke-virtual {v1, p5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    iput p6, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_DisplayValues:I

    iput-object p7, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_DefaultValue:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Lcom/android/camera/menu/MenuItem;

    iput-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    new-instance v2, Lcom/android/camera/menu/ListPreferenceValueMenuItem;

    iget-object v3, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/menu/ListPreferenceValueMenuItem;-><init>(Lcom/android/camera/menu/ListPreferenceMenuItem;Ljava/lang/String;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ListPreferenceMenuItem;->setItems([Lcom/android/camera/menu/MenuItem;)V

    return-void
.end method


# virtual methods
.method protected checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSubItemClicked(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Settings:Lcom/android/camera/Settings;

    iget-object v1, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/camera/menu/ListPreferenceMenuItem;->updateContent()V

    return-void
.end method

.method public updateContent()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Resources:Landroid/content/res/Resources;

    iget v5, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_DisplayValues:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Settings:Lcom/android/camera/Settings;

    iget-object v5, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_DefaultValue:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Lcom/android/camera/menu/MenuItem;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/menu/ListPreferenceMenuItem;->checkSubItemVisibility(Lcom/android/camera/menu/MenuItem;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Values:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Lcom/android/camera/menu/MenuItem;->setVisibility(Z)V

    goto :goto_2

    :cond_2
    if-ltz v3, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/camera/menu/ListPreferenceMenuItem;->setSummary(Ljava/lang/String;)V

    :cond_3
    :goto_3
    invoke-super {p0}, Lcom/android/camera/menu/MenuItem;->updateContent()V

    return-void

    :cond_4
    const/4 v1, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/camera/menu/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/camera/menu/ListPreferenceMenuItem;->setSummary(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/camera/menu/ListPreferenceMenuItem;->m_Items:[Lcom/android/camera/menu/MenuItem;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/android/camera/menu/MenuItem;->setChecked(Z)V

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
