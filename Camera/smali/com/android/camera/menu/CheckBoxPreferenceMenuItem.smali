.class public Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;
.super Lcom/android/camera/menu/CheckBoxMenuItem;
.source "CheckBoxPreferenceMenuItem.java"


# instance fields
.field private final m_DefaultValue:Z

.field private final m_PreferenceKey:Ljava/lang/String;

.field private final m_Settings:Lcom/android/camera/Settings;

.field private final m_SummaryOff:I

.field private final m_SummaryOn:I


# direct methods
.method public constructor <init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/camera/menu/CheckBoxMenuItem;-><init>(II)V

    iput-object p1, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_Settings:Lcom/android/camera/Settings;

    iput-object p2, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_DefaultValue:Z

    iput p4, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOn:I

    iput p5, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOff:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Settings;Ljava/lang/String;IZ)V
    .locals 7

    const v4, 0x7f0a0068

    const v5, 0x7f0a0069

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;-><init>(Lcom/android/camera/Settings;Ljava/lang/String;IIIZ)V

    return-void
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/camera/menu/CheckBoxMenuItem;->getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;

    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOn:I

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_1
    return-object p4

    :cond_1
    iget v1, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_SummaryOff:I

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/android/camera/menu/MenuItem$ItemViewInfo;->summaryTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onClicked()Z
    .locals 3

    invoke-super {p0}, Lcom/android/camera/menu/CheckBoxMenuItem;->onClicked()Z

    iget-object v0, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_Settings:Lcom/android/camera/Settings;

    iget-object v1, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public updateContent()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_Settings:Lcom/android/camera/Settings;

    iget-object v1, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_PreferenceKey:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->m_DefaultValue:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/menu/CheckBoxPreferenceMenuItem;->setChecked(Z)V

    invoke-super {p0}, Lcom/android/camera/menu/CheckBoxMenuItem;->updateContent()V

    return-void
.end method
