Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C851AB52F
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734203734; cv=none; b=TaFOAsKThUEK9NbQ88nvif8BLpyGmVS2mpFH5SdTCHt6ImkIIq4FPsDnJUXexiqFAjVtfMeru7R0iRzASAA70+fnY8CBTKQg6HiV1a9RQRLSWcdzEgVKA1+mzA0i3yU1V82fnMDlsFlYP7mC7wN2InUH7GhGdGlSmis+cCIeycQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734203734; c=relaxed/simple;
	bh=T4wrukM0ozVE+VQ2W8GMQV7qJS/fG3TL48fvXTesCTQ=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=gQA68AB33MnIuE7DL6scZwaJdvw20lfxv96wcUhQQ2FOZlZpAN4AF3WDZ5NQYdvfPUgxFCJYF+cP6+jb2wyIbmambu/mmSIXi5hCvWGinCSJi+UQDB/fWn1GzKcMcE7BgUV/iJt6D78Q/en25yFhLrA1Fq0pqF8/1CE901FMrRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734203734;
	bh=T4wrukM0ozVE+VQ2W8GMQV7qJS/fG3TL48fvXTesCTQ=;
	h=Subject:From:To:Date:From;
	b=ObSMJclR7ivQLbD338fj2osiht6UeAPXQQQmKBJZIjLP7/bzV5g0xQV2sneV77g5H
	 SlSs6L0NuQjQLhh/aCNY+gJHrRoSIGNf53AvB/z+Z0qSaUlUN/8snkMObhTv3FW6A4
	 wHC/8lB2hURt01b6A15Fjpg1dVv785mf1+89kQdA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A3D7C4CED1
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:15:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id EB0A2380A959
	for <linux-kernel-announce@vger.kernel.org>; Sat, 14 Dec 2024 19:15:51 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.174 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 14 Dec 2024 19:15:50 +0000
Message-Id: <20241214191550.release-5.15.174@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.174
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.174.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.174.xz

Linux kernel version 5.15.174 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.174.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.174.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.174.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.174/v5.15.173

