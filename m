Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61CF339FCE
	for <linux-kernel-announce@vger.kernel.org>; Thu,  7 May 2026 04:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778129173; cv=none; b=RtdzZ2erZdXnfLE01hrVxIV4K7f42DzTIEGMkegRY76K5FeYPg++Gl3zJj+lATKF8AU016y+joTjNl7NFa1OLozroTjslQ7Oxj2nzae49JfZjv6go6EOa93ZOOsIqRsxrHJAiJjx94boqPieE8eMqk/Gh4ZyflzkSO4tohlrVAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778129173; c=relaxed/simple;
	bh=DEty7fACSJd9nPsm6l15xxiBqcKvJwZ8gVa6QKOz8Rk=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=hfUlZBRZOChFXVKRrcJJPV3Kkhj6qIIIhEWUG2vsk+gBF/MQFJ6vEs9AF7yEBZu1DBZTVmWChH12dl9d3pVnpbpf3Q+30zT7oaCrUtrb3p5HJxQW6xouGuE6jtXAzdf2jyIUBdpNXaeDF1q5+WBH7tkyHc/wEKvnyWm0XrzH7/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778129173;
	bh=DEty7fACSJd9nPsm6l15xxiBqcKvJwZ8gVa6QKOz8Rk=;
	h=Subject:From:To:Date:From;
	b=C03/1vli8TGQJYASPjBW+zJguMhEEfZOAfkTMY4Ol5mCO05YJFg4zCqHidvfWCukf
	 w5k5L23ipIt6DMvaogwfvGTTWiRu72982ZkHDvsK2QGeQz16EktG+uGo1jfEXVQBuD
	 c06qkckDhk/S5gX0QxwGv1EL/XANRP/P/pNn18bc=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2993C2BCC7
	for <linux-kernel-announce@vger.kernel.org>; Thu,  7 May 2026 04:46:12 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 42AF439308A0
	for <linux-kernel-announce@vger.kernel.org>; Thu,  7 May 2026 04:45:23 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.86 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 07 May 2026 04:45:21 +0000
Message-Id: <20260507044521.release-6.12.86@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.86
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.86.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.86.xz

Linux kernel version 6.12.86 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.86.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.86.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.86.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.86/v6.12.85

