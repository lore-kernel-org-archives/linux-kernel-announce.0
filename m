Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A366D32B9B6
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783195246; cv=none; b=B6k7WWMRmq+uVQv4LNpQO/8Pyz8GL8AF/m4GVKTpjeF8q0i0YKmBNmQdWKw3v/ycibwCkyptwiPqg+lGcm0ZV1+Rr2uGLw105JAn+Ikt+jjO2HIeI03ZJtD/84vKStU3WAJ74LT60GM0GlPBXmGWTO2RtOYAG1A4j8E3hcx2T90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783195246; c=relaxed/simple;
	bh=HtmLKqOeZyp+fZAyyiz6418pfdb3a7M4gvZs+Z2e0YA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dp6r2G+DuSc3CSQv9XA+Tz9ZGR65xzPNnTE7wYY1DXExEn+TTNjFX0XOrrwhd1SK0Z7u8nvk/RGihYNEQWMcnBjJ7NY5qFLk9j9ol/wxXnHZC1uvWuqIzpVe5W1kctBSck4sJbq65L57HT4Wrf17PZ/b5sFrqDzP+Ck7ilaZHp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1783195246;
	bh=HtmLKqOeZyp+fZAyyiz6418pfdb3a7M4gvZs+Z2e0YA=;
	h=Subject:From:To:Date:From;
	b=hvniOgafupOWrbAUBC/Qo185Rvwzw1TOBpFJuvL21MZTB/Pj276tRV1eRSKcxX+n8
	 QmgR3PmfMnxdJCiDYh5dBD4Jax5EbN8jkjsus14GoIAxB28g/bgDSCXgrCGhJrC+pY
	 WuRZm1+Qp/Ef7d0QtSAp0bUUbXt6SFkLdqdhEYRw=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81D081F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:45 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 56B86393A573
	for <linux-kernel-announce@vger.kernel.org>; Sat,  4 Jul 2026 20:00:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.211 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 04 Jul 2026 20:00:26 +0000
Message-Id: <20260704200026.release-5.15.211@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.211
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.211.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.211.xz

Linux kernel version 5.15.211 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.211.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.211.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.211.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.211/v5.15.210

