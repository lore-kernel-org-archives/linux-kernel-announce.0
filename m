Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793990777;
	b=d4S6SxPfhEAuX3Hvb9ptjNKTBk29Uub3zesF+YSqdgRKqcOQOYRpK/B1aWKhQLlhLBcT
	 5+bBF9pEG8rAPXco81Lu609ArCw3QpQveT+GR/j1237kqQefveI7EG4KCZfqkDQ7Q6iJj
	 rDHn1WsBmQZafktNcaFf77hMEN1wAAmQ10umjk1VItEMwXZ5qIZj2NrfGyGYdnwkGd1/h
	 53J2G9dLp9Q2t00vSnwCY2wi5FzeA7etQL3s8NC1z+L4vSkJfkuFylQKBvZzPF3r8n7Io
	 d+cLFHDcB3DoKTeR/9w/ndhEK3lxGRmUYugt2Q8N5xiztoCSjnUSf9Ca2fiQ/cG7nUg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793990777;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=rLiyrq2ifyrw9lSYpGn8OfzBdjYVGGR6JrriVb3Z5F0=;
	b=QymB+XNlDOSK3cjqTOVpO5XPBkDlC2XTJbD/t0jtrp5MScnqninqqu+72wjr8qm0Wc4I
	 FIrNm3AKFTlwRdHgYnl521DhOvzjT8TFVjqA38sYix5ABwqq/4fyUKvvoJGZUTNmzJ/HX
	 xQRK2FLKBUiAgI/a+H1p8uM7N1mQD1fiSvc/N6G0foAiTD+TmuDV+vc8EVQXBhjWQMH4p
	 jYyFVtQKMsPm0cOVUKvO1EcLAnVtgntXSZi7rcQjuLc/stkA5o/7Va+ciksUW0AJpaGsf
	 Nn1ZwTyap6sfJCQWkfMc8f4/+TKzzQy0CWpC00LGwV9Gp5WPKDD185x6QirEMcKz0mQ==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA37606A331
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1793990777;
	bh=rLiyrq2ifyrw9lSYpGn8OfzBdjYVGGR6JrriVb3Z5F0=;
	h=Subject:From:To:Date;
	b=UqPOmqrUbJ5Xa9XEQY2ukEcvcI5gbXLSmT4NnaoBnXpZGcFG1Y0BzizGnbtOi3xfG
	 tNAt0kvi7iGwcnDoI6LpUaL9seWZxepiWmQbNBgvg1JFtp17r6Ol02oiz6nuaBr80j
	 uP4077H1hsiKxH2cOsHBN1YkVArv14SUcmXT8KAJKRw1MqZcamX5UqrkHhSHTqNA5W
	 hRxGP0nEYifw+pD6Z8IXzEqsKFvSV9xsNvu7NcsvwpPYM/iRqrBDrJIb7suVzN/9t7
	 40r3ubjAGYbnbu0f5O3PSKvRNSpEXGYkqekrwpKA9X2Nybh19aCYRdYG5oegGPQYve
	 VmEdG3HqTl2FA==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E31181F008A1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:16 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id D81BB3A41018
	for <linux-kernel-announce@vger.kernel.org>; Fri,  6 Nov 2026 18:46:16 +0000 (UTC)
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
Subject: Linux kernel 6.6.162 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 06 Nov 2026 18:46:15 +0000
Message-Id: <20261106184615.release-6.6.162@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.162
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.162.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.162.xz

Linux kernel version 6.6.162 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.162.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.162.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.162.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.162/v6.6.161

