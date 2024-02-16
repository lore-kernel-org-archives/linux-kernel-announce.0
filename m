Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCA67131722
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708107944; cv=none; b=WiHJAEjrD39qirkoRzEVYMdcmddl97sX56KwWGjpxxvs+eiX/P1h/gW+x0X4qQlJzYspXj1QooqXce6R01DH8TWCNUQJ39cHv2PlWJdA322pfncF657XpToN8lScGUQgRcu97EIuhxvIwIsoU5wy7osJ46k4rdsBrT940Oe7jDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708107944; c=relaxed/simple;
	bh=81iNdkAw8RTU7t3U5cXRL1je1nRDLDk6S1hmruwGOm8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=dqTCCqWZO+a17ae6Dot3L/HaHrngfTrgCosshKhv4COCYtxB9hUS63QsEGa/RQbPgMqL/T21+T+dh9fEq/5JR0c6lfmcQ+KfispV3wDDNxzHNXquNaF/uMun5/fGEcc6zsEBjPCv4u/9x629w6ekrVEdU9VXFjIiXtOGZQduBxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1708107944;
	bh=81iNdkAw8RTU7t3U5cXRL1je1nRDLDk6S1hmruwGOm8=;
	h=Subject:From:To:Date:From;
	b=Df4aqXPZ/fwJvx9oZBjcFfukqlg7V6ZVvRO7B+EjfwjUDZVnY5YL7W6uEoDpDhXzW
	 PYVNXqWhngyPf7u8wFfP8iOckdX+Pl9cFtj2YzvKUOlr0hdcHDg+w2n+MQQGY/yx89
	 mmgSD2OpxfNVSK08J3oqq3xBfZ/Rj5JpSqDVWUXI=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 453F2C433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:25:44 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 2BEC8D8C966
	for <linux-kernel-announce@vger.kernel.org>; Fri, 16 Feb 2024 18:25:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.78 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 16 Feb 2024 18:25:44 +0000
Message-Id: <20240216182544.release-6.1.78@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.78
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.78.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.78.xz

Linux kernel version 6.1.78 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.78.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.78.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.78.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.78/v6.1.77

