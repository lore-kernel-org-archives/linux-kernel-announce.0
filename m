Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6F2330B01
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776503153; cv=none; b=P8xE6aRVABMaq1lVefsE8rqQHjZFWihd6kBsw3gfdQwV8BKlmWsnwPXU1LiMENhmn3p4fLNrphohojCjksNupgZEKnozBjtSuW63RPsJd4UxAoFBWM3MZZ9xEXO6GYKo0YZs97ZiVP0LSAd7C8yljJqdLSRYHlngjU3gDKxAako=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776503153; c=relaxed/simple;
	bh=jNLXmZRJPUwk+bGJD45HHirLz29hVpKu0eGTOsunl0A=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=h7T9rj2QzJzDy95dmNv1FHiBl3RDMr92gqGOcJ//yaxE+CZyFAiLDc2CC+mHEW+Gg5KBWde6CnXi9OZzLPUiKVgke8Rfb7daoToBCiR2jLW2z3dODjwBLoZkVAmZngMC1qddNS2mJmeL5xyTfaTc3004g822AQo2ps6FOlQrhPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776503153;
	bh=jNLXmZRJPUwk+bGJD45HHirLz29hVpKu0eGTOsunl0A=;
	h=Subject:From:To:Date:From;
	b=wsS3QauJyPNSynREP5wFqCMucdJIU4hWx0gTJsXOtnIGa99nMT5YnU+ox0oVngOcc
	 mT0w07OLC0xMXuKTTg1QjFx6u1f4hNMKSdCLHwclYMnvgcjmKsPsCBueM6b29sUPex
	 OyDCGHkL+6dHLxIdcAQgUQwSwNCxw9w0125q7dU8=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B306EC19424
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:05:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC93E380CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:05:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.23 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Apr 2026 09:05:19 +0000
Message-Id: <20260418090519.release-6.18.23@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.23
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.23.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.23.xz

Linux kernel version 6.18.23 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.23.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.23.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.23.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.23/v6.18.22

