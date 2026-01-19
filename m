Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468A437F0E5
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768833800; cv=none; b=MtIClk3cVk1Ht6lFJWTF4MsKyn4uqUmeHMaymt0HMbxzUuVeXc9faV0dWk3b1tVRTYtp8ENoFWlqCJ91qHqtG8r3eRIlm7QNJ77EgBQd2wpHaE2JfAB50xgSnmyS0z2bTXPV2rmDF2+6PiXa6+X89NzerHA8hXuay+g4mP1xVE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768833800; c=relaxed/simple;
	bh=XKiOcwcXqWCP19h4M3LlHU6H0+XZD1rMCh9EvKPSNKQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=VWUT2AdT87q3HMykNf5Y86PY08y4y6SpH1IqqaScn66V+aYdZ0uBsOalNrdErbVwv8EpxnaFzdprGNPZX+oW1Y5xAv1g1jbKn1FB2EgpwQ9ddhRDdo4QLI1tWZiRVXzXs7UbocOcaY3dOLDrk5pXaAuSGIGxoB6+LJzDMXYAjis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1768833800;
	bh=XKiOcwcXqWCP19h4M3LlHU6H0+XZD1rMCh9EvKPSNKQ=;
	h=Subject:From:To:Date:From;
	b=gkoZMHJ4ZbAzDmS5e0yDAquigCitavAlb9OZWwgcBatihQ4HIVTa0hpYt/KU447dA
	 ixVDkWTKwb+VDY15jTL3y4lhHIqKlAyOoWsGZt5UKQ0SuhqetP13YYH+IOIzFdng1M
	 c5IxKiCt4xLvHdnDbmzZ0sUJQr34Y+zh8JA7QfMg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08479C116C6
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:43:20 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id F2CEE3A72A5E
	for <linux-kernel-announce@vger.kernel.org>; Mon, 19 Jan 2026 14:39:50 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.66 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 19 Jan 2026 14:39:49 +0000
Message-Id: <20260119143949.release-6.12.66@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.66
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.66.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.66.xz

Linux kernel version 6.12.66 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.66.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.66.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.66.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.66/v6.12.65

