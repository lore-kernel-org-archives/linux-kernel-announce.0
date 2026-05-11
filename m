Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004312DF137
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 May 2026 06:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778481372; cv=none; b=GSCqkbHZRSDWitYsPNZAYiKkCh7IGwfW6UgJJqq/1gr5kt2iHcO9oXTQ86SrYsUpB02UXDkLxqbvhz2Lc6+d8koSOfqM01LlNIR3BJhJMO29BOHfq9963hiOH09TTiYTAGa4tkmU1ENCBVypQlwEnPPpjqflv/fH1P1nh8LbmHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778481372; c=relaxed/simple;
	bh=DZunIY5wWoXTc5N/Dko0ewwsXIu44JaculqdS1QGvd0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=TJfyZHYSiOwYg15Ac6M2+sx98FZ5QKzQW6w8s6RKRWSSK8xspWh7R1AplEKHunXGx9Uhq+sbY32C89Jl5QfwdSVv2GoUysEVzRzQVG9sMDfEoU/b8xUg/mmIRq04QvWdHkpV0ynO2xR0XRsbyvvg1D1VDWKTGK3wKUPkXWzS4Mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1778481372;
	bh=DZunIY5wWoXTc5N/Dko0ewwsXIu44JaculqdS1QGvd0=;
	h=Subject:From:To:Date:From;
	b=YUGJ+flBcpIVxF90e0tuzbbL+NIZQ1o+Yeo6NlFiJtdrTA3lGDCoiRgiIv4QGG3E6
	 hmPgNqYSrAsIHVzQ7I2fyD30Cf9ZGL/aNd4+rGmmya8yOVL9nhORNfXIIKOrLwgogl
	 A1jaST7/W0177ufGEihFE+aswli04W9V6lTXY3Yk=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F45EC2BCB0
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 May 2026 06:36:11 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BCB8B39301B5
	for <linux-kernel-announce@vger.kernel.org>; Mon, 11 May 2026 06:35:19 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.0.6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 11 May 2026 06:35:18 +0000
Message-Id: <20260511063518.release-7.0.6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.0.6
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.6.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.6.xz

Linux kernel version 7.0.6 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.6.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.0.6.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.0.6.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.0.6/v7.0.5

