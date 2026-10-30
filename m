Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793363423;
	b=SOB/3lEvYl00LeYDZX6OCpwY91QrU39dmNXNPeCzBWUMIx4M4gggqw7u246TEuRnqwC3
	 d2T+iTpSK28Z+ljAMoNdh0akiyedfxhjmNQC+5DtKI+KoWoPWaZcBoxZ8WQOmENsGL1BN
	 U4PHlYGJK5Z3VrkTr8YCuPMt3c2bvSRZ+R8zPWTmuWFtrfAVVinxQ9cdwP9EjgvnZs65D
	 ZOa8mgi/906FR4Wx/Y/TnZuDTti6ep0CgCNHdj9bq2JoiQhORkx5ST1CwGng3P0n44AC8
	 IxoEfkAQTAAOavlQMUY1niyEts9blLd1GksFVba1sBE9h3W9tDt8V5XwN4Sp0UB4s+A==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793363423;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=Tp6ieBI0lP3Aocl9kmXLGFyFlzc4bRlyJgv8J+zPnB4=;
	b=JOnpL0cAgOZUkBpNKOLHFtfG7uhfOXbGXG4LrTB81s7rrX5n75c3IeMoAhZP1spvTkGJ
	 Q4F1apYjoCUD5GZiJSlwPlmkHjWtbnWqjzliB1gMlHWVv7thfdB94qhw0hh/wQNa7gV7i
	 yuOfK/m6rIxQP/4LcS1KtIXSBzL7xpZACFUq0mNHHCAfciQcJsb5RU8H+GhMyyRf0u3ZT
	 bgngUUk+7Ti7H+RNtRKsSnm5rSrY8k0PSckwvEsPeGhSjxk5823k993IxyhfHuyrhTZmf
	 to66bjkiE9ByQpWUzpPv1Y7tbDD1xLsX/Z9kS6Z3g7quMdW03jFWdaoI6lTlRm4CkIQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C71A606A325
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793363423;
	bh=Tp6ieBI0lP3Aocl9kmXLGFyFlzc4bRlyJgv8J+zPnB4=;
	h=Subject:From:To:Date;
	b=p3hpn7Ij4hjwna25hDh5iym0czQ+ZDa8AG6Y0+JBsKZCU9wnvxhycGd3K32RRcB+e
	 WKd3hodHjNqEolAihHC/uG9e0sNHzjkkYz35QmH7d8Rvzx6bXNwD4/74zmhWqy99mA
	 V1AYjvVxi8yMdM8Px46vBP9AYyDL2Y1TzQRdSaHQPkHO0US1h+zyA9zjQt2/HNW0r0
	 g7V9Lw23h+GJkZOshaf0T/PyWiXRugKgZLGE0S2yJYu9LM5N4+L6t+IOQkec4XDEYh
	 Z7U/g7XkdR631R1MFFHk/sZRTBw1Jo+MdV76CXZR6OR6CA+jBYcL3LFmXUWX8nz+OW
	 odqBbL0DSeL+A==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0DE501F0093A
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:30:23 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 02F59380045C
	for <linux-kernel-announce@vger.kernel.org>; Fri, 30 Oct 2026 12:30:23 +0000 (UTC)
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
Subject: Linux kernel 6.12.115 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 30 Oct 2026 12:30:21 +0000
Message-Id: <20261030123021.release-6.12.115@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.12.115
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.115.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.115.xz

Linux kernel version 6.12.115 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.115.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.12.115.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.12.115.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.12.115/v6.12.114

