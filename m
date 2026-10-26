Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793028626;
	b=dMVXOFTrZ7LLv8giZls3JV7aMhJwbBR4NOkagCq/o3XT7/8qkWjPupCRLkM0xDwOHRwn
	 I5HFLXstjvgkasJdGhJwjejBPfym1RyhPO60zfgyPK0Wyk8lg3hSIqFmGjDeOQkBRXAPz
	 49SzM6RIiidSHj7YinoGEP6iGBaOKpZ/KH+3eMG+fSoGW1O5UNLenysmKwPer0obFbUev
	 XNxv8ctenqPfAVDN6CxjP69Mg7XGXMwbqUiQ+0zXlPF5sR6xDhykJHF3uqCe6l9ViwQnE
	 6fXlZcP3vOECQTrjwT4xA9akSXDj2a3ZOvJuRnNxJPxBhjugmdWsDtNNQ8/Oa4uOY/Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793028626;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=QHtBWYYVVxGORLL/gVJQ+9Gfn8e1XB7HOzIhT9vS92I=;
	b=0zxPrTHi2aincCNZ5iKkm2cONU8BUzhFNTuCd0rJ2wa01ZcM7BiOaeW35XibiQHwvtxa
	 hf7L6Gjum53VD8rEKOMal5LcAN+/wTYG7AqqS4qdKE7+e/aQviMIv7Y9LDw2qVadBUzU0
	 6pbLfNPMasJA1kuhPNwoHfk7ciJz4hMA53fPtFuMS45QuoGq6HPKal5kXrjWpdfL3TPpq
	 hV4S9MZzCs6aKGdO8U8pSIRYeHXM7T5l993/lIyOLOoIZ8y4j9dAA/RV2itcN93EyuOvv
	 caMpWKa7jfxeiRtYIeT7UCEW6BzHc61zZ8lcgO+oXtjpLOE/8+U1AY12i9oXnDR0DZw==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4A8606A32A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Oct 2026 15:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793028626;
	bh=QHtBWYYVVxGORLL/gVJQ+9Gfn8e1XB7HOzIhT9vS92I=;
	h=Subject:From:To:Date;
	b=pYUB5YgNuYLolDk3G9hMwVfKBtZglCrwKTB+f8det5M8McAGJasma4JtJ9etMpoqI
	 IVOh7a9GQMzpwUXyCFK+l8pPahYcf3pavIuSqfK17j2ce2aUVOtAG13tgc/io177SK
	 v4u++OYI1diEzeaHu1MF8yXfQTsUehTRqEUjPTidB/on7vjvSPW9DYJPKTCWc9I8YV
	 a3s9IFVs+nskAWIAaI/fIxKaWLY1Qn0o08YeewyuNwkvxnMGgn7SkXmg4kIMpo22+j
	 FBpC9oqdiQEY2S9IMTwQtwMY1+0qaIWxlgOPk0Ivu1FZ6NoDvI/RQQT4PTGufYwM7E
	 9cktl7VAOlWJw==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D51991F031E2
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Oct 2026 15:30:25 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C11463AA58BA
	for <linux-kernel-announce@vger.kernel.org>; Mon, 26 Oct 2026 15:30:25 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.18.59 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 26 Oct 2026 15:30:24 +0000
Message-Id: <20261026153024.release-6.18.59@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.18.59
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.59.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.59.xz

Linux kernel version 6.18.59 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.59.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.18.59.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.18.59.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.18.59/v6.18.58

