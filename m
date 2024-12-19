Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BFF19D08F
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734629729; cv=none; b=JA6tnCi4hYHty5l2Fe73WzvDKM5a9H1We2/Y/ImmifEnTzJJs1oaNWulTlpnbO2YX6byNiMCEhIKLDEeNexNe45PbmsDLN2UA1DyFh4SYDcHwOjrHGZpheF21QEsDVBYwuWdnjsmptNMVfMKoy9ozVOLAqnA6bXvIvvFTiN75ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734629729; c=relaxed/simple;
	bh=kjeyAOmHG3LkfjXs/eyyaaMoUIx1y+g5R6GVM53LD5o=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=Sz+WOb9r+RhGxLnAx4KfLMPlWqWxHKLufC6aPvXqKfO5n3Cwv2vOVxlm89Jb/gY54pVUrhFaCrDGAAi5BrC0oL9GB8QbZq4A3yPJsPNQ1FhdF789UeKPhLTT2OVWU7vigAVKQcfFXj1cZrWqib+LjspSvcfJ8Fo7YgRc88lY6Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1734629729;
	bh=kjeyAOmHG3LkfjXs/eyyaaMoUIx1y+g5R6GVM53LD5o=;
	h=Subject:From:To:Date:From;
	b=YRtFG1UlUtvGulZOSyQGDW2ITnH5SBsNGVglDW3vUcmGx4mDbV4xokp02B4fEkvzH
	 btEnlXz39cBNmjPWhHh3NY+yoQQGp+qP9vnwFotaaGx2SeVuE1Gmq+IOeEPaS24kOj
	 Q/ZhbGSg7uY6Zq3k+/gZGtvpPRd/snWWoDAB+pZA=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B5EF9C4CECE
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:35:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 77A8A3806656
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Dec 2024 17:35:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.12.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Dec 2024 17:35:45 +0000
Message-Id: <20241219173545.release-6.12.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.6.xz

Linux kernel version 6.12.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.6/v6.12.5

