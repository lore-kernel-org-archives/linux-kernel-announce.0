Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6A640848
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:50:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722070258; cv=none; b=B7LTzWz8oQd8Q9m52FPci/DUZxLfdXgoAv99xrqI4nG2P6gVHAlh3Aghg6y1WIu0Pjf+Sm8F9gLV2mvi1STrZEr3Rf5A1zgKqA5/zB09lRx+S7bnRfSKAilMsAy0luUn5d56pi6j9q6BqaLPIVZFH3Dl4rM5Ffkk4zkcZqhVrBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722070258; c=relaxed/simple;
	bh=OeEbaBH6okyjwNEr3u9j0g7HaC4H4buwEV4NKJMx4Zo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=QqFhdWIC93XchyyDFqLfceCnFNjINI4Ia393msWGiPxKD3EkZAktSZxMWUMGjWIbX/2+Qwv9eQCSWRjJ3+uogdujKIwnVCYlgDAwMqNgPwSZ/OXIiyrUCBYOomCbI36L5Dz/Iy2xB8GD1F1wC42QJYiY/8zzggBQ1dyzfcGzGoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1722070258;
	bh=OeEbaBH6okyjwNEr3u9j0g7HaC4H4buwEV4NKJMx4Zo=;
	h=Subject:From:To:Date:From;
	b=V23o6xzYt90XGADKrlHGc7U2nubI3algwaGq5tdSK2W2ViYBfNVSMMwYqgZoh+AjC
	 tTtDhCbQy1vd+UwX8E6XciIovN7Ubq3mimGmKFfc24I9QhiV1I/rgcUXEIgySiw+nz
	 1jQQ+8Bj8yJAEx3/o7QI4wIZejQtVqRq6I0ua2oo=
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59E0C32781
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:50:57 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id A3A2DC433E9
	for <linux-kernel-announce@vger.kernel.org>; Sat, 27 Jul 2024 08:50:57 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.4.281 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 27 Jul 2024 08:50:57 +0000
Message-Id: <20240727085057.release-5.4.281@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.4.281
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.281.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.281.xz

Linux kernel version 5.4.281 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.281.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.4.281.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.4.281.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.4.281/v5.4.280

