Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B3D7E1
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:40:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709296845; cv=none; b=IcI8ky99RwVIyS2kTdG3s5r46DLD9j+LmaK7zD9iDgtW+CgawrSR6ixj+J6fRMOaJ3RcQOgfPlsEmcztY6Vpcx3uGBbQImJMpprv0ACYqscBvQaUKREynpbL/ACINNxHsD/wkOS7bRuM8EFOVKaLboq6MzET517RzU4vZWBxRCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709296845; c=relaxed/simple;
	bh=pbQwOF2Y19srB2Mr/2JYjJH2bedKrvkBGtl4ScdFPFg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=PtPopCXRtxf7XNgjHyuCtNLHgs3tryv6d8gR8ExvmWUZde+tw/Re0OJFfosXobHoloxdh3h1roh/2YiFe7dQ72onoN8mMXafCPLHPBmkf0/s7WMHz/36bl6vRcH+V72JwpOrUsiGxdUlj6ilVY8cazXhGAa4QLHIgZUc9oQS6M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1709296845;
	bh=pbQwOF2Y19srB2Mr/2JYjJH2bedKrvkBGtl4ScdFPFg=;
	h=Subject:From:To:Date:From;
	b=R5ESEaZJjauItOgNlO/ViJ5cIIYitAkwjXT8CNKMlBr6vguR6QInSIsTQPUhz5OHb
	 NyeaFtN03xVofK0cTKA3tkbKjaNWLixknxvxl+DRxv2mmORoGdSqycj61B5V8N+4fW
	 G+sGNGOrlxx+tD3iOSCcLMMYgI1ix3YIT3wwSW/Y=
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4FC8AC433C7
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:40:45 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 398AAC595C4
	for <linux-kernel-announce@vger.kernel.org>; Fri,  1 Mar 2024 12:40:45 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.150 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Fri, 01 Mar 2024 12:40:45 +0000
Message-Id: <20240301124045.release-5.15.150@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.150
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.150.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.150.xz

Linux kernel version 5.15.150 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.150.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.150.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.150.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.150/v5.15.149

