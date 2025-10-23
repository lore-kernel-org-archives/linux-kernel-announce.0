Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08AA1315D2E
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761230458; cv=none; b=fmiOaITaFy7xJj9k1uNl+AOlqCZsomIyUNIyMOhUme7Ln1suIUb4C+h/oqjZTM/e0O518moImxa3bcOdIY3lLNw+iulTXD8QmZCkvX9OXT/sdAKJcNM8QByp1B53boYanfuatE2UqHwsU3QwzGK5ugelZruYKkdm+lD9v9nHM88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761230458; c=relaxed/simple;
	bh=Pm1qbOZTd1NR2PuYoGXOwo0lsHH9VXhEXg4HRnbIM1E=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TxewHPzMI9r0OZjA04+yr1yyX3218Zk+XbO18+TTn9c0aULvNFFEO5GGHKzc7xyRiVTSNDz006DyQCewKQn4S4/rq03okodzGv913dg4z3hKzXNQpGxdy3SzvqXLC4Bo/zLOId4VsxE10shRcSRXvmNuNLjVbgmwyexLfybd6EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1761230458;
	bh=Pm1qbOZTd1NR2PuYoGXOwo0lsHH9VXhEXg4HRnbIM1E=;
	h=Subject:From:To:Date:From;
	b=K1+VFRZsgI+styKDlnEXgXo0qKtUkdf2aBx8SZsL4ND4cbjP8VwRgM2kdur052wwX
	 A1fR1vyMNNSYE/uYZAZUlp/XJqLSfKRGU2gYKo1XEy+dp54PmfUVan/k2mvh1MufrE
	 v9WSKcpu8HPfJ4AYvIPLCk3eVq658wsUEqF3Y/W4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0838C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:40:57 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3788F380A940
	for <linux-kernel-announce@vger.kernel.org>; Thu, 23 Oct 2025 14:40:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.55 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 23 Oct 2025 14:40:37 +0000
Message-Id: <20251023144037.release-6.12.55@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.55
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.55.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.55.xz

Linux kernel version 6.12.55 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.55.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.55.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.55.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.55/v6.12.54

